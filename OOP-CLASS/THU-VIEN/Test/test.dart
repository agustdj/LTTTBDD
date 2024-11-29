import '../Model/sach.dart';
import '../Model/tac-gia.dart';
import '../Model/thu-vien.dart';

void main() {
  var tv = ThuVien();
  tv.themSach(Sach("01", "Sach A"));
  tv.themSach(Sach("02", "Sach B"));
  print("Danh Sach Sach: ");
  tv.hienThiDanhSachSach();
  tv.themTacGia(TacGia("A"));
  tv.themTacGia(TacGia("B"));
  print("Danh Sach Tac Gia: ");
  tv.hienThiDanhSachTacGia();
}