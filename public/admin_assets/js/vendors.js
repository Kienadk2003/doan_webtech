window.createAdminDataTable = function (table) {
    if (!table) {
        return null;
    }

    return new simpleDatatables.DataTable(table, {
        perPageSelect: [10, 25, 50, 100],
        labels: {
            placeholder: "Tìm kiếm...",
            perPage: "{select} Số dòng",
            noRows: "Không có dữ liệu",
            info: "Hiển thị {start} đến {end} của {rows} dòng"
        }
    });
};

// Simple Datatable
let table1 = document.querySelector('#table1');
window.dataTable = window.createAdminDataTable(table1);
