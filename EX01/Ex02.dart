void main() {
  // int a = 5;
  // print(a == true ? 10 : 5);
  // int a = 5;
  // print(a == true ? 10 : 5);
  var names = ['A', 'B'];
  for (var name in names) {
    //name = 'K';
    names[1] = 'K';
  }
  print(names);
}
