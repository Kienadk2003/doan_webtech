# Đề tài
**Thiết kế và xây dựng website quản lý cửa hàng phụ kiện cho TechStore sử dụng Laravel**

## Mô tả ngắn
Đây là đồ án xây dựng hệ thống quản lý và bán phụ kiện công nghệ cho TechStore, gồm:
- Website khách hàng: xem phụ kiện, tìm kiếm, giỏ hàng, đặt hàng, thanh toán.
- Trang quản trị: quản lý danh mục, thương hiệu, phụ kiện, đơn hàng, mã giảm giá, banner, tin tức, thống kê.

## Công nghệ sử dụng
- PHP 8.1+
- Laravel 10
- MySQL
- Blade Template
- jQuery + Bootstrap
- Cloudinary (quản lý ảnh)
- VNPay (thanh toán online)

## Cài đặt và chạy dự án
1. Clone source code.
2. Cài thư viện PHP:
   - `composer install`
3. Tạo file môi trường:
   - `cp .env.example .env` (hoặc sao chép thủ công trên Windows)
4. Cấu hình `.env`:
   - `DB_DATABASE`, `DB_USERNAME`, `DB_PASSWORD`
   - `APP_NAME`, `APP_URL`
   - `MAIL_*`
   - `CLOUD_NAME`, `CLOUDINARY_URL`
5. Tạo key ứng dụng:
   - `php artisan key:generate`
6. Chạy migration và seed:
   - `php artisan migrate:fresh --seed`
7. Chạy server:
   - `php artisan serve`

## Tài khoản mặc định (seed)
- Username: `admin`
- Password: `1`

## Ghi chú
- Nếu gặp lỗi SSL `cURL error 60`, cần cấu hình chứng chỉ CA cho PHP/cURL theo môi trường máy.
