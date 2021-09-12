void main() {
  const String stringToDouble = '1.99';
  final double result = double.parse(stringToDouble);
  print(result);

  const String stringToInt = '1';
  final int result2 = int.parse(stringToInt);
  print(result2);

  const String stringToInt2 = '2';
  final int? result3 = int.tryParse(stringToInt2);
  print(result3);

  const double doubleToString = 1.99;
  final String result4 = doubleToString.toString();
  print(result4);

  const int intToString = 1;
  final String result5 = intToString.toString();
  print(result5);
}
