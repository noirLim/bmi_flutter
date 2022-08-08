import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);
  static const Color customMagenta50 = Color(0xfffcd5ce);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            appBarTheme: AppBarTheme(color: Color(0xFF0A0E21)),
            scaffoldBackgroundColor: Color(0xFF0A0E21)
        ),
        home: InputPage());
  }
}

