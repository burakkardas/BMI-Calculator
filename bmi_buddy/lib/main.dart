import 'package:bmi_buddy/core/theme/app_theme.dart';
import 'package:bmi_buddy/features/home/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Init());
}

class Init extends StatelessWidget {
  const Init({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'BMI Buddy',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.themeData,
        home: const HomeView(),
      );
}
