import 'dart:io';

void main() {
  print('Nhap b lon hon hoac bang 1');
  int b = int.parse(stdin.readLineSync()!);

  if (b < 1) {
    print('Nhap lai');
  }
  String binary = "";
  if (b >= 1) {
    while (b >= 1) {
      binary = (b % 2).toString() + binary;
      b = b ~/ 2; 
    }
    print(binary);
  }
}
