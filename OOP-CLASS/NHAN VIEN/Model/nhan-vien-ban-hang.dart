import 'nhan-vien.dart';

class NhanVienBanHang extends NhanVien {
  double _doanhSo;
  double _hoaHong;

  NhanVienBanHang(String maNV, String hoTen, double luongCanBan,
      this._doanhSo, this._hoaHong) : super (maNV, hoTen, luongCanBan);

  //getters
  double get doanhSo => _doanhSo;
  double get hoaHong => _hoaHong;

  //setters
  set doanhSo (double doanhSo){
    if(doanhSo>0){
      this._doanhSo = doanhSo;
    }
  }

  set hoaHong (double hoaHong) {
    if(hoaHong>=0 && hoaHong<=1) {
      this._hoaHong = hoaHong;
    }
  }

  @override
  double tinhLuong() {
    return luongCanBan + doanhSo * hoaHong;
  }

  @override
  void hienThiThongTinNhanVien() {
    super.hienThiThongTinNhanVien();
    print("Doanh so: ${doanhSo}");
    print("Hoa Hong: ${hoaHong}");
  }
}
