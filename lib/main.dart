import 'package:flutter/material.dart';
import 'package:bmi_flutter/input_page.dart';
void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: const AppBarTheme(color: Color(0xFF0A0D22)),
        scaffoldBackgroundColor: const Color(0xFF0A0D22),
      ),
      home: const InputPage(),
    );
  }
}


