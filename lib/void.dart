// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const MyAppMaterial(),
//     );
//   }
// }

// class MyAppMaterial extends StatelessWidget {
//   const MyAppMaterial({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

//######################################################

class Example {
  static const example4 = 'Example4';
}

void main() {
  var example1 = 'Example1';
  print(example1);

  example1 = 'Example1 updated';
  print(example1);

  const int example2 = 2;
  print(example2);

  final List<String> example3 = ['List1', 'List2'];
  print(example3);

  const _example4 = Example.example4;
  print(_example4);

  late bool example5;
  example5 = true;
  print(example5);

  void example6() => print('Example6');
  example6();
}
