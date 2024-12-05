/* */
import 'dart:io';
import 'dart:math';

void main() {
  double a = 0, b = 0, c = 0;
  do {
    //Nhap a
    stdout.write('Nhap a khac 0');
    String? input = stdin.readLineSync();
    if (input != null) {
      a = double.tryParse(input) ?? 0;
    }
    if (a == 0) {
      print('Vui long nhap lai');
    }

    //Nhap b
    stdout.write('Nhap b');
    String? inputB = stdin.readLineSync();
    if (inputB != null) {
      b = double.tryParse(inputB) ?? 0;
    }

    //Nhap c
    stdout.write('Nhap c');
    String? inputC = stdin.readLineSync();
    if (inputC != null) {
      c = double.tryParse(inputC) ?? 0;
    }

    //In phuong trinh
    print('Phuong trinh: ${a}x^2 + ${b}x + ${c} = 0');

    //Tinh delta
    double delta = b * b - 4 * a * c;
    print('Delta: ${delta}');

    //Tim Nghiem
    if (delta < 0) {
      print('Phuong Trinh Vo nghiem');
    } else if (delta == 0) {
      double x0 = -b / 2 * a;
      print('Phuong Trinh Co Nghiem Kep: ${x0}');
    } else {
      double x1 = (-b + (sqrt(delta)) / 2 * a);
      double x2 = (-b - (sqrt(delta)) / 2 * a);
      x1 = double.parse(x1.toStringAsFixed(2));
      x2 = double.parse(x2.toStringAsFixed(2));
      print('Phương Trinh Co 2 Nghiem Phan Biet:');
      print('x1 = $x1');
      print('x2 = $x2');
    }
  } while (a == 0);
}
