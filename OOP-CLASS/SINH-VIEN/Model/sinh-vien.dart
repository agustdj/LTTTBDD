class SinhVien {
  String _hoTen;
  int _tuoi;
  String _maSV;
  double _diemTB;

//Contructor
  SinhVien(this._hoTen, this._tuoi, this._maSV, this._diemTB);

// Getters
  String get hoTen => _hoTen;
  int get tuoi => _tuoi;
  String get maSV => _maSV;
  double get diemTB => _diemTB;

  // Setters
  set hoTen(String hoTen) {
    if (hoTen.isNotEmpty) {
      _hoTen = hoTen;
    }
  }

  set tuoi(int tuoi) {
    _tuoi = (tuoi > 0) ? tuoi : _tuoi;
  }

  set maSV(String maSV) {
    if (maSV.isNotEmpty) {
      _maSV = maSV;
    }
  }

  set diemTB(double diemTB) {
    if (diemTB >= 0 && diemTB <= 10) {
      _diemTB = diemTB;
    }
  }

  void hienThiThongTin() {
    print('Ho Ten: $_hoTen');
    print('Tuoi: $_tuoi');
    print('Ma Sinh Vien: $_maSV');
    print('Điem TB: $_diemTB');
  }

  String xepLoai() {
    if (_diemTB >= 8.0) return 'Gioi';
    if (_diemTB >= 6.5) return 'Kha';
    if (_diemTB >= 5.0) return 'Trung Binh';
    return 'Yeu';
  }
}
