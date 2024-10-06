import 'package:bmi_buddy/models/bmi_model.dart';
import 'package:flutter/material.dart';

class BMIResultView extends StatefulWidget {
  const BMIResultView({super.key, required this.bmi, required this.bmiValue});

  final BMI bmi;
  final double bmiValue;

  @override
  State<BMIResultView> createState() => _BMIResultViewState();
}

class _BMIResultViewState extends State<BMIResultView> {
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'BMI: ${widget.bmiValue.toStringAsFixed(1)}',
          style: textTheme.headlineMedium,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Text(
          widget.bmi.weightType,
          style: textTheme.bodyMedium,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        Text(
          widget.bmi.description,
          style: textTheme.labelSmall,
        ),
      ],
    );
  }
}
