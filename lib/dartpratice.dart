addNumbers(num num1, num num2) {
  return num1 + num2;
}

void main() {
  String name = 'Dercio';
  int age = 21;
  double firstResult = addNumbers(2, 4.5);
  double secondResult = addNumbers(15, 10.5);

  print('First result: $firstResult');
  print('Second result: $secondResult');
  print('Total: ${firstResult + secondResult}');
}
