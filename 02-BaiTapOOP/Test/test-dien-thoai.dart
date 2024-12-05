import '../Model/cua-hang.dart';
import '../Model/dien-thoai.dart';

void main() {
   CuaHang cuaHang = CuaHang('Cua Hang ABC', 'Duong ABC');

  //Them Dien Thoai
   try {
    var dt1 = DienThoai('DT-001', 'iPhone 14', 'Apple', 15000, 20000, 100, true);
    cuaHang.themDienThoai(dt1);
    print('Them Thanh Cong!.');
  } catch (e) {
    print('Loi: $e');
  }

  // Hien Danh Sach Dien Thoai
  print("\nDanh Sach Dien Thoai:");
  cuaHang.hienThiDanhSachDienThoai();

  //Cap Nhat Dien Thoai
  try {
    var cn = DienThoai('DT-001', 'iPhone 14 Pro', 'Apple', 16000, 22000, 50, true);
    cuaHang.capNhatThongTinDienThoai(cn);
    print('Da Cap Nhat!.');
  } catch (e) {
    print("Loi: $e");
  }
}