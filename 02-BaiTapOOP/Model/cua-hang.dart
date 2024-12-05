import 'dien-thoai.dart';
import 'hoa-don.dart';

class CuaHang {
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _danhSachDienThoai = [];
  List<HoaDon> _danhSachHoaDon = [];

  //Contructor
  CuaHang(this._tenCuaHang, this._diaChi);

  //Getters
  String get tenCuaHang => _tenCuaHang;
  String get diaChi => _diaChi;
  List<DienThoai> get listDienThoai => _danhSachDienThoai;
  List<HoaDon> get listHoaDon => _danhSachHoaDon;

  //Setters
  set tenCuaHang(String tenCuahang) {
    _tenCuaHang = (tenCuahang.isNotEmpty) ? tenCuahang : _tenCuaHang;
  }

  set diaChi(String diaChi) {
    _diaChi = (diaChi.isNotEmpty) ? diaChi : _diaChi;
  }

  //Phuong thuc quan ly dien thoai
  //Them dien thoai moi
  void themDienThoai(DienThoai dt) => _danhSachDienThoai.add(dt);

  //Cap nhat Thong Tin Dien thoai
  void capNhatThongTinDienThoai(DienThoai dienThoai) {
    for (var dt in _danhSachDienThoai) {
      if (dt.maDT == dienThoai.maDT) {
        dt = dienThoai;
      }
    }
  }

  void ngungKinhDoanh(DienThoai dienThoai) {
    for (var dt in _danhSachDienThoai) {
      if (dt.maDT == dienThoai.maDT) {
        dt.trangThai = false;
      }
    }
  }

  //Tim Kiem Dien Thoai Theo MaDT
  List<DienThoai> timKiemDienThoai(String maDT) {
    return _danhSachDienThoai.where((dt) => dt.maDT.contains(maDT)).toList();
  }

  //Hien thi danh sach dien thoai
  void hienThiDanhSachDienThoai() {
    for (var dt in _danhSachDienThoai) {
      dt.hienThiThongTin();
    }
  }

  //Phuong Thuc Quan Ly Hoa Don
  void taoHoaDon(HoaDon hoaDon) => _danhSachHoaDon.add(hoaDon);

  //Hien Thi danh sach hoa don
  void hienDanhSachHoaDon() {
    for (var hd in _danhSachHoaDon) {
      hd.hienThiThongTin();
    }
  }

  //Tim Kiem Hoa Don Theo MaHD
  List<HoaDon> hoaDonTheoMa(String ma) {
    return _danhSachHoaDon.where((hd) => hd.maHD.contains(ma)).toList();
  }

  // Tim Hoa Don Theo Ngay
  List<HoaDon> hoaDonTheoNgay(DateTime ngay) {
    return _danhSachHoaDon.where((hoaDon) {
      DateTime hoaDonNgay = hoaDon.ngayBan;
      return hoaDonNgay.year == ngay.year &&
          hoaDonNgay.month == ngay.month &&
          hoaDonNgay.day == ngay.day;
    }).toList();
  }

  //Tim Hoa Don Theo ten Khach hang
  List<HoaDon> hoaDonTheoTen(String tenKH) {
    return _danhSachHoaDon
        .where((hd) => hd.tenKhachHang.contains(tenKH))
        .toList();
  }

  //Phuong thuc thong ke
  //Tong doanh thu theo khoang thoigian
  double tinhTongDoanhThu(DateTime ngayDau, DateTime ngayCuoi) {
    double tongDoanhThu = 0;
    for (var hoaDon in _danhSachHoaDon) {
      if (hoaDon.ngayBan.isAfter(ngayDau.subtract(Duration(days: 1))) &&
          hoaDon.ngayBan.isBefore(ngayCuoi.add(Duration(days: 1)))) {
        tongDoanhThu += hoaDon.tongTien();
      }
    }
    return tongDoanhThu;
  }

  double tinhTongLoiNhuan(DateTime ngayDau, DateTime ngayCuoi) {
    double tongLoiNhuan = 0;
    for (var hoaDon in _danhSachHoaDon) {
      if (hoaDon.ngayBan.isAfter(ngayDau.subtract(Duration(days: 1))) &&
          hoaDon.ngayBan.isBefore(ngayCuoi.add(Duration(days: 1)))) {
        tongLoiNhuan += hoaDon.loiNhuanThucte();
      }
    }
    return tongLoiNhuan;
  }

  void thongKeTopDienThoai() {
    var top = <String, int>{};
    // Tinh so luong ban ra
    for (var hoaDon in _danhSachHoaDon) {
      var maDienThoai = hoaDon.dienThoai.maDT;
      top[maDienThoai] = (top[maDienThoai] ?? 0) + hoaDon.soLuongMua;
    }

    //Sap xep danh sach theo so luong giam dan
    var sapXepDanhSach = top.entries.toList()
      ..sort((a, b) => b.value.compareTo(a.value));

    // In ra top bán chạy
    print("Top dien thoai ban chay:");
    for (var dt in sapXepDanhSach) {
      print('Ma Dien Thoai: ${dt.key}, So Luong Ban: ${dt.value}');
    }
  }

  //Thong ke ton kho
  void thongKeTonKho() {
    int tongTonKho = 0;
    for (var dt in _danhSachDienThoai) {
      tongTonKho += dt.soLuong;
    }
    print('Tong so luong hang ton kho: $tongTonKho');
  }
}
