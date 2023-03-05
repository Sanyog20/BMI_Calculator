import 'package:flutter/material.dart';
import 'Screens/input_page.dart';
import 'Screens/results_page.dart';

void main() {
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({Key? key}) : super(key: key);

  static const appName = 'BMI CALCULATOR';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0A0E21),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/result': (context) => ResultsPage(
              bmiResult: bmi,
              interpretation: interpretation,
              resultText: result,
            ),
      },
    );
  }
}
