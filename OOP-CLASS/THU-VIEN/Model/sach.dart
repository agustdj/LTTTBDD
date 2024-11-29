class Sach {
  String _maSach;
  String _tenSach;

  //Contructor 
  Sach(this._maSach, this._tenSach);

  //Getters
  String get maSach => _maSach;
  String get tenSach => _tenSach;

  //Setters
  set maSach(String maSach) {
    if(maSach.isNotEmpty) {
      this.maSach = maSach;
    }
  }

  set tenSach(String tenSach) {
    if(tenSach.isNotEmpty) {
      this.tenSach = tenSach;
    }
  }

  void hienThiThongTinSach() {
    print('Ma sach: $_maSach');
    print('Ten Sach: $_tenSach');
  }
}

