import 'sinh-vien.dart';

class LopHoc {
  String _tenLop;
  List<SinhVien> _danhSachSV = [];
  LopHoc(this._tenLop);

  //Getter
  String get tenLop => _tenLop;
  List<SinhVien> get listSinhVien => _danhSachSV;

  //Setter
  set tenLop (String hoTen) {
    if(tenLop.isNotEmpty) {
      tenLop = _tenLop;
    }
  }

  void themSinhVien(SinhVien sv)=> _danhSachSV.add(sv);

  void hienDanhSach() {
    for(var sv in _danhSachSV) {
      sv.hienThiThongTin();
      sv.xepLoai();
    }
  }
}