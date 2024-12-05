import '../Model/lop-hoc.dart';
import '../Model/sinh-vien.dart';
void main () {
  var sv = SinhVien("K", 20, "SV01", 8.5);
  print(sv.hoTen);

  sv.hoTen = "";
  print(sv.hoTen);

  print(sv.xepLoai());

  sv.hienThiThongTin();

  var lop = LopHoc("21DTHD5");
  lop.themSinhVien(SinhVien("Phat", 20, "SV02", 9));
  lop.hienDanhSach();
}