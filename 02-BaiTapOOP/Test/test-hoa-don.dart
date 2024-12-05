import '../Model/cua-hang.dart';
import '../Model/dien-thoai.dart';
import '../Model/hoa-don.dart';

void main() {
  var cuaHang = CuaHang('Cua Hang ABC', 'Duong ABC');
  var dt1 = DienThoai('DT-001', 'iPhone 14', 'Apple', 15000, 20000, 100, true);
  var dt2 = DienThoai('DT-002', 'Samsung Galaxy S21', 'Samsung', 12000, 16000, 50, true);
  cuaHang.themDienThoai(dt1);
  cuaHang.themDienThoai(dt2);

  //Tao Hoa Don 
  try {
    var hoaDon1 = HoaDon('HD-001', DateTime.now(), dt1, 10, 19000, 'Nguyen Van A', '0123456789');
    cuaHang.taoHoaDon(hoaDon1);
    print("Them Thanh Cong!.");
     // Tinh tien va loi nhuan 
    print("Tong Tien: ${hoaDon1.tongTien()}");
    print("Loi Nhuan: ${hoaDon1.loiNhuanThucte()}");
  } catch (e) {
    print('Loi: $e');
  }

  //Hien Thi Danh Sach Hoa Don
  print("\nDanh Sach Hoa Don:");
  cuaHang.hienDanhSachHoaDon();
}