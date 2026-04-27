<?php

namespace App\Http\Controllers;

use App\Models\Banners;
use App\Models\BannersFeatured;
use App\Models\Brands;
use App\Models\Categories;
use App\Models\Discounts;
use App\Models\Info;
use App\Models\Orders;
use App\Models\Products;
use App\Models\Reviews;
use App\Models\Subcategories;
use App\Models\User;
use App\Models\News;
use App\Models\Wishlist;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use CloudinaryLabs\CloudinaryLaravel\Facades\Cloudinary;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;
use PDO;

class WebController extends Controller
{
    public function index(Request $request){
        $products = Products::all()->where('status',1)->sortByDesc('created_at')->take(4);
        $brands = Brands::all()->where('status',1);
        $banners = Banners::all()->where('status',1);
        $bannersfeatured = BannersFeatured::all()->where('status',1)->take(3);
        $products_featured = Products::all()->where('status',1)->where('featured_product',1);
        // Top selling based on sold quantity (only count delivered orders)
        // Optionally filter by month when ?month=YYYY-MM is present
        // Default to current month when not provided. If month === 'all', do not filter by date (all-time).
        $month = $request->input('month', null);
        $soldQuery = DB::table('orders__details')
            ->join('orders', 'orders__details.orders_id', '=', 'orders.id')
            ->where('orders.status', 3); // only delivered

        if ($month === null) {
            // no month passed: default to current month
            $start = Carbon::now()->startOfMonth();
            $end = Carbon::now()->endOfMonth();
            $soldQuery = $soldQuery->whereBetween('orders.created_at', [$start, $end]);
        } elseif ($month !== 'all' && $month !== '') {
            // month provided and not 'all' -> try to parse YYYY-MM
            try{
                $start = Carbon::createFromFormat('Y-m', $month)->startOfMonth();
                $end = Carbon::createFromFormat('Y-m', $month)->endOfMonth();
                $soldQuery = $soldQuery->whereBetween('orders.created_at', [$start, $end]);
            }catch(\Exception $e){
                // parsing failed: fallback to current month
                $start = Carbon::now()->startOfMonth();
                $end = Carbon::now()->endOfMonth();
                $soldQuery = $soldQuery->whereBetween('orders.created_at', [$start, $end]);
            }
        } // else $month === 'all' -> no date filter (all-time)

        $soldAgg = $soldQuery->groupBy('orders__details.products_id')
            ->select('orders__details.products_id', DB::raw('SUM(orders__details.quantity) as sold_qty'))
            ->orderByDesc('sold_qty')
            ->limit(4)
            ->get();

        $productIds = $soldAgg->pluck('products_id')->toArray();

        // Fetch product models and attach sold_qty for display
        $soldMap = $soldAgg->mapWithKeys(function($row){
            return [$row->products_id => (int) $row->sold_qty];
        });

        $top_selling = Products::whereIn('id', $productIds)
            ->where('price','!=',0)
            ->where('price_new','!=',0)
            ->where('status',1)
            ->get()
            ->map(function($p) use ($soldMap){
                $p->sold_qty = $soldMap->get($p->id, 0);
                return $p;
            })
            ->sortByDesc('sold_qty')
            ->values()
            ->take(4);
        $news = News::all()->where('status',1)->sortByDesc('created_at')->take(4);
        return view('web.pages.home.index',[
            'brands'=>$brands,
            'products' => $products,
            'banners'=>$banners,
            'bannersfeatured'=>$bannersfeatured,
            'products_featured'=>$products_featured,
            'top_selling'=>$top_selling,
            'news'=>$news
        ]);
    }

    // AJAX endpoint returning top-selling rows for a month
    public function topSellingAjax(Request $request){
        $month = $request->input('month', null);
        $soldQuery = DB::table('orders__details')
            ->join('orders', 'orders__details.orders_id', '=', 'orders.id')
            ->where('orders.status', 3);

        if ($month === null) {
            // default to current month
            $start = Carbon::now()->startOfMonth();
            $end = Carbon::now()->endOfMonth();
            $soldQuery = $soldQuery->whereBetween('orders.created_at', [$start, $end]);
        } elseif ($month !== 'all' && $month !== '') {
            try{
                $start = Carbon::createFromFormat('Y-m', $month)->startOfMonth();
                $end = Carbon::createFromFormat('Y-m', $month)->endOfMonth();
                $soldQuery = $soldQuery->whereBetween('orders.created_at', [$start, $end]);
            }catch(\Exception $e){
                $start = Carbon::now()->startOfMonth();
                $end = Carbon::now()->endOfMonth();
                $soldQuery = $soldQuery->whereBetween('orders.created_at', [$start, $end]);
            }
        }

        $soldAgg = $soldQuery->groupBy('orders__details.products_id')
            ->select('orders__details.products_id', DB::raw('SUM(orders__details.quantity) as sold_qty'))
            ->orderByDesc('sold_qty')
            ->limit(4)
            ->get();

        $productIds = $soldAgg->pluck('products_id')->toArray();
        $soldMap = $soldAgg->mapWithKeys(function($row){
            return [$row->products_id => (int) $row->sold_qty];
        });

        $top_selling = Products::whereIn('id', $productIds)
            ->where('price','!=',0)
            ->where('price_new','!=',0)
            ->where('status',1)
            ->get()
            ->map(function($p) use ($soldMap){
                $p->sold_qty = $soldMap->get($p->id, 0);
                return $p;
            })
            ->sortByDesc('sold_qty')
            ->values()
            ->take(4);

        // Render partial rows and return HTML
        return view('web.pages.home._top_selling_rows', ['top_selling' => $top_selling])->render();
    }

    // !Authentication
    public function signin_signup(){
        if(Auth::check()){
            return redirect('/');
        }
         // Lấy đường dẫn trình duyệt của người dùng
        $referer = request()->headers->get('referer');
        // Lưu trữ đường dẫn trong session
        session()->put('previous_url', $referer);
        // dd(session()->all());
        return view('web.common.signin_signup');
    }
    
    public function handle_login(Request $request){
        $credentials = Validator::make($request->all(),[
            'username' => 'required',
            'password' => 'required',
        ],
        [
            'username.required'=>__("the username field is required"),
            'password.required'=>__("the passwords field is required")
        ]);

        if($credentials->fails()){
            return back()->with('toast_error', $credentials->messages()->all()[0])->withInput();
        }
        
        $authenticated = Auth::attempt(['username' => $request['username'], 'password' => $request['password']]);
        if(!$authenticated) {
            $authenticated = Auth::attempt(['email' => $request['username'], 'password' => $request['password']]);
        }
        if($authenticated)
        {
            if(Auth::user()->hasRole('admin'))
            {
                Auth::logout();
                return redirect()->back()->with('toast_error',__("Only clients have access"));
            }
            if($request->has('rememberme')){
                session(['username_client'=>$request->username]);
                session(['password_client'=>$request->password]);
            }else{
                session()->forget('username_client');
                session()->forget('password_client');
            }
                toast(__("Login Successfully"),'success');
                return redirect(session()->get('previous_url'));
        }else{
            return redirect()->back()->with('toast_error',__("Wrong username or password. Please try again"));
        }
    }

    public function register(Request $request){
         $credentials = Validator::make($request->all(),[
             'username' => 'required|min:4|max:20|unique:users',
             'password' => 'required|min:6',
             'repassword'=>'required|same:password',
             'email'=>'required|unique:users',
             'firstname'=>'required',
             'lastname'=>'required',
             'phone' => 'regex:/^([0-9\s\-\+\(\)]*)$/|min:10|max:12||unique:users|required'
        ],
        [
            'username.required'=>__("the username field is required"),
            'password.required'=>__("the passwords field is required"),
            'password.min'=>__("The password must be at least 6 characters"),
            'lastname.required'=>__("the last name field is required"),
            'firstname.required'=>__("the first name field is required"),
            'username.unique'=>__("the username is already exists"),
            'username.min'=>__("The username must be at least 4 characters"),
            'username.max'=>__("The username maximum 20 characters"),
            'email.required'=>__("the email field is required"),
            'email.unique'=>__("the email is already exists"),
            'repassword.required'=>__("the repassword field is required"),
            'repassword.same'=>__("the repassword is incorrect"),
            'phone.regex' => __("Phone numbers are from 0 to 9 and do not include characters"),
            'phone.min' => __("Phone number at least 10 digits"),
            'phone.max' => __("Phone number maximum 20 digits"),
            'phone.unique' => __("Phone number is already exists"),
            'phone.required'=>__("The phone number field is required"),
        ]);

        if($credentials->fails()){
            if ($request->ajax()) {
                return response()->json([
                    'message' => $credentials->messages()->all()[0]
                ], 422);
            }
            return back()->with('toast_error', $credentials->messages()->all()[0])->withInput();
        }

        $user = new User([
            'lastname'=>$request->lastname,
            'firstname'=>$request->firstname,
            'username'=>$request->username,
            'email'=>$request->email,
            'image'=>'https://e7.pngegg.com/pngimages/84/165/png-clipart-united-states-avatar-organization-information-user-avatar-service-computer-wallpaper.png',
            'password'=>Hash::make($request->password),
            'address'=>$request->address,
            'district'=>$request->district,
            'phone'=>$request->phone,
            'city'=>$request->city
        ]);
        $user->save();
        $user->syncRoles('client');
        
        if ($request->ajax()) {
            return response()->json(['message' => __("Sign Up Successfully")]);
        }

        return redirect()->back()->with('toast_success',__("Sign Up Successfully"));
    }

    public function logout(){
        Auth::logout();
        return redirect('/signin_signup')->with('toast_success',__("Logout Successfully"));
    }

    public function verify_email(){
        $token = Str::random(20);
        $email = $_GET['email'];
        $user = User::where('email','=',$email)->first();

        if($user){
            $verify = User::find($user->id);
            $verify->email_verified = 1;
            $verify->remember_token = $token;
            $verify->save();
            if(Auth::check())
            {
                $name = Auth::user()->username;
                return redirect('/profile')->with('success',__('Activate for account ').$name.__(' successfully!'));
            }
            return redirect('/')->with('success',__("Activate email successfully!"));
        }
        else{
            return redirect('/')->with('warning',__("Please try again as the link has expired!"));
        }
    }
   
    public function forgotPassword(Request $request){
        $user_email = User::where('email','=',$request->email)->first();

        if($user_email){
            if($user_email->email_verified == 1){
                $token = Str::random(20);
                $user = User::find($user_email->id);
                $user->remember_token = $token;
                $user->save();
                 //send mail
                $to_email = $request->email;
                $name = $user->firstname;
                $today = Carbon::now('Asia/Ho_Chi_Minh')->format('d-m-Y');
                $link_reset_password = url('/reset-password?email='.$to_email.'&token='.$token);

                Mail::send('web.pages.account.sendmail-reset-password', [
                    'name' => $name,
                    'to_email' => $to_email,
                    'today'=>$today,
                    'link_reset_password'=>$link_reset_password,
                ], function ($email) use ($name,  $to_email,$today) {
                    $email->subject(__("Confirm password update: ").$today);
                    $email->to($to_email, $name);
                });
                return redirect('/signin_signup')->with('success',__('Please check your email to reset your password !'));
            }else{
                return redirect('/signin_signup')->with('error',__('Your email has not been verified !'));
            }
        }else{
            return redirect('/signin_signup')->with('error',__('Your email does not exist !'));
        }
        return redirect('/signin_signup')->with('error',__('There is an error in your request !'));

    }

    public function reset_password(){
        if(isset($_GET['email']) && isset($_GET['token']))
        {
            return view('web.pages.account.reset-password');
        }else{
            abort(404);
        }
    }

    public function handle_reset_password(Request $request){
        $token = Str::random(20);
        $user = User::where('email','=',$request->email)->where('remember_token','=',$request->token)->first();
        // dd($request->email);
        if($user){
            $reset = User::find($user->id);
            $request->validate([
                'password' => 'required',
                'repassword' => 'required|same:password'
            ],[
                'password.required' => __("Please enter a new password !"),
                'repassword.required' => __("Please re-enter your password !"),
                'repassword.same' => __("The re-enter password does not match !")
            ]);
            if(Hash::check($request->password,$reset->password)){
                return redirect()->back()->with('warning',__("The new password matches the old password !"));
            }
            $reset->password = Hash::make($request->password);
            $reset->remember_token = $token;
            $reset->save();
            return redirect('/signin_signup')->with('success',__("Reset Password Successfully !"));
        }else{
            return redirect('/signin_signup')->with('error',__("Please try again because the link has expired !"));

        }
       
    }

    //! Products
    public function list(){
        $products = Products::orderBy('id', 'DESC')->where('status',1)->paginate(8);
        $categories = Categories::orderBy('id','DESC')->where('status',1)->get();
        $brands = Brands::orderBy('id','ASC')->where('status',1)->get();
        return view('web.pages.products.list',[
            'products'=>$products,
            'categories'=>$categories,
            'brands'=>$brands
        ]);
    }

    public function detail($id){
        $products = Products::find($id);
        if(!$products){
            abort(404);
        }
        $related = Products::where('sub_id',$products->sub_id)->take(4)->get();
        $reviews = Reviews::where('products_id',$id)->orderBy('id','DESC')->get();
        return view('web.pages.products.detail',[
            'products'=>$products,
            'related'=>$related,
            'reviews'=>$reviews
        ]);
    }

    public function category($id){
        $category = Categories::find($id);
        $products = Products::where('cat_id',$id)->where('status',1)->orderBy('id', 'ASC')->Paginate(12);
        return view('web.pages.categories.index',[
            'category'=>$category,
            'products'=>$products
        ]);
    }

    public function subcategory($id){
        $subcategory = Subcategories::find($id);
        $products = Products::where('sub_id',$id)->where('status',1)->orderBy('id', 'ASC')->Paginate(12);
        return view('web.pages.subcategories.index',[
            'subcategory'=>$subcategory,
            'products'=>$products
        ]);
    }

    public function brands($id){
        $brand = Brands::find($id);
        $products = Products::where('brands_id',$id)->where('status',1)->orderBy('id', 'ASC')->Paginate(12);
        return view('web.pages.brands.index',[
            'brand'=>$brand,
            'products'=>$products
        ]);
    }

    public function search(Request $request){
        if($request->search){
            $products = Products::where('status',1)
                ->where('name','LIKE','%' . $request->search . '%')
                ->latest()
                ->get(); // Lấy tất cả, không phân trang
            return view('web.pages.products.list',[
                'products'=>$products
            ]);
        }else{
            return redirect()->back()->with('toast_error',__("Empty Search"));
        }
    }

    public function reviews(Request $request){
        if(Auth::check()){
            $validate = Validator::make($request->all(),[
                'rate' => 'required',
                'content'=>'required|min:8',
            ],[
                'rate.required'=>__("Please select number of stars."),
                'content.required'=>__("Please enter content."),
                'content.min'=>__("The content must be at least 8 characters.")
            ]);
    
            if($validate->fails()){
                return back()->with('toast_error', $validate->messages()->all()[0])->withInput();
            }
            $checkReview = Reviews::where(['users_id' => Auth::user()->id,'products_id'=>$request->products_id])->count();
            if($checkReview > 0){
                return redirect()->back()->with('toast_warning',__('You have already rated this product'));
            }else{
                $reviews = new Reviews([
                    'products_id'=> $request->products_id,
                    'users_id'=>Auth::user()->id,
                    'rate'=>$request->rate,
                    'content'=>$request->content
                ]);
                $reviews->save();
                return redirect()->back()->with('toast_success',__('Successful product reviews'));
            }
        }else{
            abort(404);
        }
    }

    public function sortCategories(Request $request){
        $catValue = $request->input('cat_value', []);
        if(!empty($catValue)){
            $products = Products::where('status',1)->whereIn('cat_id',$catValue)->paginate(1000000);
        }else{
            $products = Products::orderBy('id', 'DESC')->where('status',1)->paginate(8);
        }
        $categories = Categories::orderBy('id','DESC')->where('status',1)->get();
        return view('web.pages.products.list',[
            'categories'=>$categories,
            'products'=>$products,
            'catValue'=> $catValue
        ]);
    }

    public function sortBrands(Request $request){
        $brandValue = $request->input('brand_value', []);
        if(!empty($brandValue)){
            $products = Products::where('status',1)->whereIn('brands_id',$brandValue)->paginate(1000000);
        }else{
            $products = Products::orderBy('id', 'DESC')->where('status',1)->paginate(8);
        }
        $brands = Brands::orderBy('id','DESC')->where('status',1)->get();
        return view('web.pages.products.list',[
            'brands'=>$brands,
            'products'=>$products,
            'brandValue'=> $brandValue
        ]);
    }

    public function sortBySelect(Request $request){
        if($request->sort == 'price-asc'){
            if(Products::where('price', '!=', 0)){
                $products = Products::orderBy('price', 'ASC')->where('status',1)->paginate(1000000);
            }else{
                $products = Products::orderBy('price_new', 'ASC')->where('status',1)->paginate(1000000);
            }
            return view('web.pages.products.filterPrice',[
                'products'=>$products
            ])->render();
        }else if ($request->sort == 'price-desc'){
            if(Products::where('price', '!=', 0)){
                $products = Products::orderBy('price', 'DESC')->where('status',1)->paginate(1000000);
            }else{
                $products = Products::orderBy('price_new', 'DESC')->where('status',1)->paginate(1000000);
            }
            return view('web.pages.products.filterPrice',[
                'products'=>$products
            ])->render();
        }
    }

    public function filterPrice(Request $request){
        // Ưu tiên lọc theo price_new nếu có, nếu không thì lọc theo price
        $from = $request->input('price_min', $request->input('from', 0));
        $to = $request->input('price_max', $request->input('to', 100000000));

        $query = Products::query()->where('status', 1);

        // Lọc theo price_new nếu có dữ liệu, nếu không thì fallback sang price
        $query->where(function($q) use ($from, $to) {
            $q->whereBetween('price_new', [$from, $to])
              ->orWhere(function($q2) use ($from, $to) {
                  $q2->where('price_new', 0)->whereBetween('price', [$from, $to]);
              });
        });

        // Có thể bổ sung lọc theo keyword, category, brand nếu cần
        $products = $query->orderByRaw('CASE WHEN price_new > 0 THEN price_new ELSE price END ASC')->get();

        return view('web.pages.products.filterPrice', [
            'products' => $products
        ])->render();
    }
    //TODO Profile
    public function profile(){
        $user = Auth::user();
        if(Auth::check()){
            return view('web.pages.account.profile',[
                'user'=>$user
            ]);
        }
        abort(404);
    }

    public function editProfile(Request $request){
        $validate = Validator::make($request->all(),[
            'phone' => 'regex:/^([0-9\s\-\+\(\)]*)$/|min:10|max:12|nullable',
        ],[
            'phone.regex' => __("Phone numbers are from 0 to 9 and do not include characters"),
            'phone.min' => __("Phone number at least 10 digits"),
            'phone.max' => __("Phone number maximum 20 digits"),
        ]);
        $user = User::find(Auth::user()->id);
        $email = User::where('email', "=", $request->email)->first();
        $phone = User::where('phone', "=", $request->phone)->first();

        if ($phone && $user->phone != $phone->phone) {
            if (!isset($request->phone)) {
                if ($request->ajax()) {
                    return response()->json(['message' => __("the phone field is required")], 422);
                }
                return redirect()->back()->with('toast_error',__("the phone field is required"));
            }
            if ($request->ajax()) {
                return response()->json(['message' => __("The phone is already exists")], 422);
            }
            return redirect()->back()->with('toast_warning', __("The phone is already exists"));
        }
        if ($email && $user->email != $email->email) {
            if (!isset($request->email)) {
                if ($request->ajax()) {
                    return response()->json(['message' => __("the email field is required")], 422);
                }
                return redirect()->back()->with('toast_error',__("the email field is required"));
            }
            if ($request->ajax()) {
                return response()->json(['message' => __("the email is already exists")], 422);
            }
            return redirect()->back()->with('toast_warning', __("the email is already exists"));
        }
        if($validate->fails()){
            if ($request->ajax()) {
                return response()->json(['message' => $validate->messages()->all()[0]], 422);
            }
            return redirect()->back()->with('toast_error', $validate->messages()->all()[0])->withInput();
        }

        if($request->changepassword == 'on'){
            $validate = Validator::make($request->all(),[
                'password' => 'required|min:6',
                'repassword'=>'required|same:password',
            ],[
                'password.required'=>__("the passwords field is required"),
                'password.min'=>__("The password must be at least 6 characters"),
                'repassword.required'=>__("the repassword field is required"),
                'repassword.same'=>__("the repassword is incorrect")
            ]);
            
            if($validate->fails()){
                if ($request->ajax()) {
                    return response()->json(['message' => $validate->messages()->all()[0]], 422);
                }
                return back()->with('toast_error', $validate->messages()->all()[0])->withInput();
            }

            if(Hash::check($request->password,$user->password)){
                if ($request->ajax()) {
                    return response()->json(['message' => __("The new password matches the old password !")], 422);
                }
                return redirect()->back()->with('warning',__("The new password matches the old password !"));
            }
            $request->password = Hash::make($request->password);
            $user->password = $request->password;
            
            if($user->isDirty('password')){
                $user->save();
                Auth::logout();
                if ($request->ajax()) {
                    return response()->json(['logout' => true, 'message' => __("Change password successfully. Please re-login to continue using the website.")]);
                }
                return redirect('/signin_signup')->with('success',__("Change password successfully. Please re-login to continue using the website."));
            }
        }
       
        $user->firstname = $request->firstname;
        $user->lastname = $request->lastname;
        $user->email = $request->email;
        $user->phone = $request->phone;
        $user->address = $request->address;
        $user->district = $request->district;
        $user->city = $request->city;

        if ($user->isDirty('email')) {
            $user->email_verified = 0;
        }
       
        $user->save();

        if ($request->ajax()) {
            return response()->json(['message' => __("Update successfully")]);
        }

        return redirect()->back()->with('toast_success',__("Update successfully"));
    }

    public function imageProfile(Request $request){
        $user = User::find(Auth::user()->id);
        if ($request->hasFile('Image')) {
            $img = $request->file('Image');
            if($user->image !=''){
                Cloudinary::destroy($user->image);
            }
            $cloud = Cloudinary::upload($img->getRealPath(), [
                'folder' => 'user',
                'format' => 'jpg',

            ])->getPublicId();
            $user->image= $cloud;
        }
        $user->save();
        return redirect()->back()->with('toast_success',__("Update successfully"));
    }

    public function detailTrackOrder(Request $request){
        // dd($request->id);
        $order = Orders::find($request->id);
        return view('web.pages.account.detail-track-order',[
            'order'=>$order
        ]);
    }

    public function myOrder(){
        if(Auth::check()){
            Orders::where('hold',1)->delete();
        $orders = Orders::where('users_id',Auth::user()->id)->orderBy('id', 'DESC')->paginate(5);
            // dd($orders);
            return view('web.pages.account.my-order',[
                'orders'=>$orders
            ]);
        }else{
            abort(404);
        }
    }

    public function trackOrder(){
        if(Auth::check()){
        $products = Products::all()->where('status',1)->sortByDesc('created_at')->take(8);
            return view('web.pages.account.track-order',[
                'products'=>$products
            ]);
        }else{
            abort(404);
        }
    }
    
    //! Cart
    public function cart(){
        return view('web.pages.cart.index');
    }

    public function handle_cart(Request $request){
        if(Auth::check()){
            $id = $request->products_id;
            // dd($request->email);
            $quantity = $request->quantity;
            $products = Products::where('id',$id)->first();
            // dd($products);
            foreach($products->ProductsImage as $value){
                $img[] = $value->image;
            }
            // dd($img[0]);
    
            if($quantity <= 0){
                return redirect()->back()->with('toast_warning',__("Please choose product at least 1 !"));
            }
            if($products->quantity == 0){
                return redirect()->back()->with('toast_warning',__("Sorry, the product is currently out of stock !"));
            }

            if($products->price_new != 0){
                $price = $products->price_new;
            }else{
                $price = $products->price;
            }

            if($request->quantity > $products->quantity){
                return redirect()->back()->with('toast_warning',__("You can't order in excess of the quantity"));
            }

            $cart = Cart::instance(Auth::user()->id);

            $cart->add([
                'id'=>$id,
                'name'=> $products->name,
                'qty'=> $request->quantity,
                'price'=>  $price,
                'weight' => 550,
                'options'=>[
                    'image'=>  $img[0],
                ]
            ]);
            return redirect()->back()->with('toast_success',__("Order Successfully !"));
        }else{
            return redirect('/signin_signup')->with('toast_warning',__("Please login to buy products"));
        }
       

    }

    public function update(Request $request){
        $qty = $request->qty;
        $id = $request->cartId;

        $products = Products::find($request->productCartId);
        $products_quantity = $products->quantity;
        $cart = Cart::instance(Auth::user()->id)->get($id);
        
        $subtotal = $cart->price*$qty;
        $cartChange = Cart::instance(Auth::user()->id);

        if($qty <= $products_quantity){
            $cartChange->update($id,$qty);
            $sum = $cartChange->priceTotal(0,',','.'); 
            $tax = $cartChange->tax(0,',','.');
            $total = $cartChange->total(0,',','.'); 
            $discount = $cartChange->discount(0,',','.');
            return response()->json([
                'success' => true,
                'subtotal'=>$subtotal,
                'sum'=>$sum,
                'tax'=>$tax,
                'total'=>$total,
                'discount'=>$discount,
            ]);       
        }else{
            return response()->json([
                'error'=>__("You can't order in excess of the quantity"),
                'products_quantity'=>$products_quantity
            ]);
        }
    }

    public function discounts(Request $request){
        $discounts = Discounts::where('code',$request->discount)->get()->first();
        $cart = Cart::instance(Auth::user()->id);
        if($discounts){
            if($discounts->status == 1){
                if($discounts->quantity ==0){
                    return response()->json(['error'=>__("Out of discount codes !")]);
                }else{
                    foreach($cart->content() as $cart_id)
                    {
                        $cart->setDiscount($cart_id->rowId,$discounts->percent);
                    }

                    $subtotal = $cart->priceTotal(0,',','.'); 
                    $total = $cart->total(0,',','.'); 
                    $tax = $cart->tax(0,',','.');
                    $percent =  $discounts->percent;
                    $discount = $cart->discount(0,',','.');

                    // $discount_id = Discounts::find($discounts->id);
                    // $discount_id->quantity--;
                    // $discount_id->save();

                    return response()->json([
                        'success'=>__("Apply Coupon code successfully !"),
                        'subtotal'=>$subtotal,
                        'total'=>$total,
                        'tax'=>$tax,
                        'percent'=>$percent,
                        'discount'=>$discount
                    ]);
                }
            }else{
                return response()->json(['error'=>__("The Coupon code is expired !")]);
            }
        }
        return response()->json([
            'error'=>__("The Coupon code doesn't exists !")
        ]);
    }
    public function cancelDiscounts(Request $request){
        $discounts = Discounts::where('code',$request->discount)->get()->first();
        $cart = Cart::instance(Auth::user()->id);
        if($cart->count() > 0){
            foreach($cart->content() as $cart_id)
            {
                $cart->setDiscount($cart_id->rowId,0);
            }

            // $discount_id = Discounts::find($discounts->id);
            // $discount_id->quantity++;
            // $discount_id->save();

            $subtotal = $cart->priceTotal(0,',','.'); 
            $total = $cart->total(0,',','.'); 
            $tax = $cart->tax(0,',','.');
            $discount = $cart->discount(0,',','.');

        return response()->json([
            'success'=>__("Cancel coupon successfully !"),
            'subtotal'=>$subtotal,
            'total'=>$total,
            'tax'=>$tax,
            'discount'=>$discount
        ]);
        }
        return response()->json(['error' => 'Oops ! Something went wrong']);

    }

    public function deleteCart(Request $request){
        $id = $request->cartId;
        $cart = Cart::instance(Auth::user()->id);
        $cart->remove($id);
        $subtotal = $cart->priceTotal(0,',','.'); 
        $total = $cart->total(0,',','.'); 
        $tax = $cart->tax(0,',','.');
        $discount = $cart->discount(0,',','.');
        $count = Cart::instance(Auth::user()->id)->count();
        return response()->json([
            'success'=>true,
            'subtotal'=>$subtotal,
            'total'=>$total,
            'tax'=>$tax,
            'discount'=>$discount,
            'count'=>$count
        ]);
        
    }

    public function checkout(Request $request){  
        if(Auth::check()){
            Orders::where('hold',1)->delete();
            return view('web.pages.cart.checkout',[
                'discount'=>$request->discount_hidden
            ]);
        }
        abort(404);
    }

    //! News
    public function newsDetail($id){
        $news = News::find($id);
        $news_all = News::get()->where('id', '!=', $id)->where('status',1)->sortByDesc('created_at');
        $categories = Categories::all()->where('status',1)->sortByDesc('created_at');
        return view('web.pages.news.detail',[
            'news'=>$news,
            'news_all'=>$news_all,
            'categories'=>$categories
        ]);
    }

    public function newsList(){
        $news = News::where('status',1)->orderBy('id', 'ASC')->Paginate(8);
        return view('web.pages.news.list',[
            'news'=>$news
        ]);
    }   
    // Hiển thị xác nhận đơn hàng theo id
    public function orderConfirm($id) {
        $order = \App\Models\Orders::findOrFail($id);
        $categories = \App\Models\Categories::all()->where('status', 1);
        $subcategories = \App\Models\Subcategories::all()->where('status', 1);
        $info = \App\Models\Info::find(1);
        return view('web.pages.cart.confirm', ['orders' => $order, 'categories' => $categories, 'subcategories' => $subcategories, 'info' => $info]);
    }

    // Xử lý đơn hàng COD
    public function checkout_cod(Request $request) {
        $cart = \Gloudemans\Shoppingcart\Facades\Cart::instance(\Auth::user()->id);
        $user = \Auth::user()->id;
        $content = $request->input('content');
        $order = new \App\Models\Orders([
            'users_id' => $user,
            'lastname' => $request->lastname,
            'firstname' => $request->firstname,
            'email' => $request->email,
            'phone' => $request->phone,
            'address' => $request->address,
            'district' => $request->district,
            'city' => $request->city,
            // Ghi chú đặc biệt để nhận biết đơn COD
            'content' => ($content ? $content . ' | ' : '') . 'COD order',
            'tax' => (int)preg_replace("/[,]+/", "", $cart->tax(0)),
            'subtotal' => (int)preg_replace("/[,]+/", "", $cart->priceTotal(0)),
            'total' => (int)preg_replace("/[,]+/", "", $cart->total(0)),
            'discount' => (int)preg_replace("/[,]+/", "", $cart->discount(0)),
            'lastname_sender' => $request->lastname_sender,
            'firstname_sender' => $request->firstname_sender,
            'phone_sender' => $request->phone_sender,
            'status' => 1,
            'hold' => 0 // Đơn hàng COD luôn hiển thị
        ]);
        $order->save();
        foreach ($cart->content() as $carts) {
            $products = \App\Models\Products::find($carts->id);
            if ($carts->qty > $products->quantity) {
                $order->delete();
                return back()->with('toast_error', __("The product just ran out of stock !"));
            }
        }
        foreach ($cart->content() as $carts) {
            $products = \App\Models\Products::find($carts->id);
            $products->quantity = $products->quantity - $carts->qty;
            $products->update();
            $order->products()->attach($carts->id, ['quantity' => $carts->qty]);
        }
        $cart->destroy();
        // Redirect về trang xác nhận đơn hàng theo id
        return redirect()->route('order.confirm', ['id' => $order->id]);
    }
}
