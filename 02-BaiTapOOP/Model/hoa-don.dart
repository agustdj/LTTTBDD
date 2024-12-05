import 'dien-thoai.dart';

class HoaDon {
  String _maHD;
  DateTime _ngayBan;
  DienThoai _dienThoai;
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _soDienThoai;

  //Contructor
  HoaDon(this._maHD, this._ngayBan, this._dienThoai, this._soLuongMua,
      this._giaBanThucTe, this._tenKhachHang, this._soDienThoai);

  //Getters
  String get maHD => _maHD;
  DateTime get ngayBan => _ngayBan;
  DienThoai get dienThoai => _dienThoai;
  int get soLuongMua => _soLuongMua;
  double get giaBanThucTe => _giaBanThucTe;
  String get tenKhachHang => _tenKhachHang;
  String get soDienThoai => _soDienThoai;

  //Setters
  set maHD(String maHD) {
    //kiem tra dinh dang bang RegExp
    RegExp regExp = RegExp(r'^HD-\d{3}$');
    _maHD = (maHD.isNotEmpty && regExp.hasMatch(maHD)) ? maHD : _maHD;
  }

  //kiem tra ngay ban ko sau ngay hien tai
  set ngayBan(DateTime ngayBan) {
    _ngayBan = (ngayBan.isBefore(DateTime.now())) ? ngayBan : _ngayBan;
  }

  set dienThoai(DienThoai dienThoai) {
    _dienThoai = (dienThoai.tinhTrangBanHang()) ? dienThoai : _dienThoai;
  }

  set soLuongMua(int soLuongMua) {
    _soLuongMua = (soLuongMua > 0 && soLuongMua <= _dienThoai.soLuong)
        ? soLuongMua
        : _soLuongMua;
  }

  set giaBanThucTe(double giaBanThucTe) {
    _giaBanThucTe = (giaBanThucTe > 0) ? giaBanThucTe : _giaBanThucTe;
  }

  set tenKhachHang(String tenKhachHang) {
    _tenKhachHang = (tenKhachHang.isNotEmpty) ? tenKhachHang : _tenKhachHang;
  }

  // kiem tra so dien thoai gom 10 so 
  set soDienThoai(String soDienThoai) {
    _soDienThoai = (soDienThoai.isNotEmpty && soDienThoai.length==10 && RegExp(r'^\d{10}$').hasMatch(soDienThoai)) ? soDienThoai : _soDienThoai;
  }

  void hienThiThongTin() {
    print("Ma Hoa Don: ${_maHD}");
    print("Ngay Ban: ${_ngayBan}");
    print("Dien Thoai: ${_dienThoai}");
    print("So Luong Mua: ${_soLuongMua}");
    print("Gia ban Thuc Te: ${_giaBanThucTe}");
    print("Ten Khach Hang: ${_tenKhachHang}");
    print("So Dien Thoai: ${_soDienThoai}");
  }

  //Tinh Tong Tien
  double tongTien() {
     return _giaBanThucTe * _soLuongMua;
  }

  //Tinh Loi Nhuan Thuc Te
  double loiNhuanThucte() {
    return (_giaBanThucTe - _dienThoai.giaNhap)* _soLuongMua;
  }


}
