import 'tac-gia.dart';
import 'sach.dart';

class ThuVien {
  List<Sach> _danhSachSach = [];
  List<TacGia> _danhSachTacGia = [];

  //Contructor

  //get
  List<Sach> get listSach => _danhSachSach;
  List<TacGia> get listTacGia => _danhSachTacGia;

  void themSach(Sach sach)=> listSach.add(sach);
  void themTacGia(TacGia dg) => listTacGia.add(dg);

  void hienThiDanhSachSach() {
    for(var sach in listSach) {
      sach.hienThiThongTinSach();
    }
  }

  void hienThiDanhSachTacGia() {
    for(var tacgia in listTacGia) {
      tacgia.hienThiThongTinTacGia();
    }
  }
}