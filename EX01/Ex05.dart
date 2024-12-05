import 'dart:io';
void main() {
  print("Nhap vao so nguyen n lon hon 1: ");
  int n = int.parse(stdin.readLineSync()!);
  int sum = 0;
  if(n<1) {
    print('Nhap lai');
  }
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      sum += i;
    }
  }
  print('Tổng các ước của n: ${sum}');
}