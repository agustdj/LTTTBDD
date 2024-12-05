class DienThoai {
  String _maDT;
  String _tenDT;
  String _hangSX;
  double _giaNhap;
  double _giaBan;
  int _soLuong;
  bool _trangThai;

  //Contructor
  DienThoai(this._maDT, this._tenDT, this._hangSX, this._giaNhap, this._giaBan,
      this._soLuong, this._trangThai);

  //getters
  String get maDT => _maDT;
  String get tenDT => _tenDT;
  String get hangSX => _hangSX;
  double get giaNhap => _giaNhap;
  double get giaBan => _giaBan;
  int get soLuong => _soLuong;
  bool get trangThai => _trangThai;

  //setters
  set maDT(String maDT) {
    //kiem tra dinh dang bang RegExp
    RegExp regExp = RegExp(r'^DT-\d{3}$');
    _maDT = (maDT.isNotEmpty && regExp.hasMatch(maDT)) ? maDT : _maDT;
  }

  set tenDT(String ten) {
    _tenDT = (tenDT.isNotEmpty) ? tenDT : _tenDT;
  }

  set hangSX(String hangSX) {
    _hangSX = (hangSX.isNotEmpty) ? hangSX : _hangSX;
  }

  set giaNhap(double giaNhap) {
    _giaNhap = (giaNhap > 0) ? giaNhap : _giaNhap;
  }

  set giaBan(double giaBan) {
    _giaBan = (giaBan > 0 && giaBan > _giaNhap) ? giaBan : _giaBan;
  }

  set soLuong(int soLuong) {
    _soLuong = (soLuong >= 0) ? soLuong : _soLuong;
  }

  set trangThai(bool trangThai) {
    _trangThai = trangThai;
  }

  //Tinh loi nhuan 
  double tinhLoiNhuan() {
    if(_giaBan> _giaNhap) {
      return _giaBan - _giaNhap * _soLuong;
    }
    return 0.0;
  }

  //Hien thi thong tin 
  void hienThiThongTin() {
    print("Ma DT: ${_maDT}");
    print("Ten DT: ${_tenDT}");
    print("NSX: ${_hangSX}");
    print("Gia Nhap: ${_giaNhap}");
    print("Gia Ban: ${_giaBan}");
    print("So Luong: ${_soLuong}");
    print("Trang Thai: ${_trangThai}");
  }

  //Kiem tra hang con ban hay ko?
  bool tinhTrangBanHang() {
    return _soLuong > 0 && _trangThai;
  }
}
