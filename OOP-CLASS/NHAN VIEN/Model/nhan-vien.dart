class NhanVien {
  String _maNV;
  String _hoTen;
  double _luongCanBan;

  //Contructor
  NhanVien(this._maNV, this._hoTen, this._luongCanBan);

  //Getters
  String get maNV => _maNV;
  String get hoTen => _hoTen;
  double get luongCanBan => _luongCanBan;

  //Setters
  set maNV(String maNV) {
    if (maNV.isNotEmpty) {
      this._maNV = maNV;
    }
  }

  set hoTen(String hoTen) {
    if (hoTen.isNotEmpty) {
      this._hoTen = hoTen;
    }
  }

  set luongCanBan(double luongCanBan) {
    if (luongCanBan > 0) {
      //(luongCanBan>0) ? luongCanBan : _luongCanBan;
      if(luongCanBan>0) {
        this._luongCanBan = luongCanBan;
      }
    }
  }

  double tinhLuong() {
    return _luongCanBan;
  }

  void hienThiThongTinNhanVien() {
    print("Ma nhan Vien: ${_maNV}");
    print("Ten Nhan Vien: ${_hoTen}");
    print("Luong Can Ban: ${_luongCanBan}");
    print("Luong: ${tinhLuong()}");
  }
}
