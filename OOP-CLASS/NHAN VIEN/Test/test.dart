import '../Model/nhan-vien-ban-hang.dart';
import '../Model/nhan-vien.dart';

void main() {
  //test nhan vien
  NhanVien nv = NhanVien("NV01", "A", 1200);
  print("Thong Tin Nhan Vien: ");
  nv.hienThiThongTinNhanVien();

  //test nhan vien ban hang
  NhanVienBanHang nvbh = NhanVienBanHang("NV01", "A", 120, 500, 0.02);
  print("Thong Tin Nhan Vien Ban Hang: ");
  nvbh.hienThiThongTinNhanVien();
  nvbh.luongCanBan = 100;
  nvbh.hienThiThongTinNhanVien();
}