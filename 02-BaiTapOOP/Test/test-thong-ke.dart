import '../Model/cua-hang.dart';
import '../Model/dien-thoai.dart';
import '../Model/hoa-don.dart';

void main() {
  // Tao cua hang
  var cuaHang = CuaHang('Cua Hang ABC', 'Duong ABC');

  // Them dien thoai
  var dt1 = DienThoai('DT-001', 'iPhone 14', 'Apple', 15000, 20000, 100, true);
  var dt2 = DienThoai('DT-002', 'Samsung Galaxy S21', 'Samsung', 12000, 16000, 50, true);
  cuaHang.themDienThoai(dt1);
  cuaHang.themDienThoai(dt2);

  // Tao hoa don
  try {
    var hoaDon1 = HoaDon('HD-001', DateTime(2024, 11, 1), dt1, 10, 19000, 'Nguyen Van A', '0123456789');
    cuaHang.taoHoaDon(hoaDon1);
    var hoaDon2 = HoaDon('HD-002', DateTime(2024, 11, 15), dt2, 20, 15000, 'Tran Thi B', '0987654321');
    cuaHang.taoHoaDon(hoaDon2);
    var hoaDon3 = HoaDon('HD-003', DateTime(2024, 11, 20), dt1, 15, 19000, 'Le Van C', '0912345678');
    cuaHang.taoHoaDon(hoaDon3);
  } catch (e) {
    print('Loi: $e');
  }

  DateTime ngayDau = DateTime(2024, 11, 1);
  DateTime ngayCuoi = DateTime(2024, 11, 30, 23, 59, 59);
  //// Thong Ke Doanh Thu 1/11/2024 đến 30/11/2024
  print("Doanh thu từ 01/11/2024 đến 30/11/2024: ${cuaHang.tinhTongDoanhThu(ngayDau, ngayCuoi)}");
  // Thong Ke Loi Nhuan 1/11/2024 đến 30/11/2024
  print("Loi nhuan tu 01/11/2024 đến 30/11/2024: ${cuaHang.tinhTongLoiNhuan(ngayDau, ngayCuoi)}");

  // Thong Ke Top Dien Thoai
  print("Top bán chạy: ");
  cuaHang.thongKeTopDienThoai();

  // Bao Cao Ton Kho
  print("Bao Cao Ton Kho:");
  cuaHang.thongKeTonKho();
}