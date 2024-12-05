class TacGia {
  String _tenTacGia;

  TacGia(this._tenTacGia);

  //get
  String get tenTacGia => _tenTacGia;

  set tenTacGia(String tenTacGia) {
    if(tenTacGia.isNotEmpty) {
      this.tenTacGia = tenTacGia;
    }
  }

  void hienThiThongTinTacGia() {
    print("Ten Tac gia: $_tenTacGia");
  }
}