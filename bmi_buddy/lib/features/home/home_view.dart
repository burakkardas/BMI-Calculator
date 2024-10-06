import 'package:bmi_buddy/core/widgets/app_button.dart';
import 'package:bmi_buddy/core/widgets/app_textfield.dart';
import 'package:bmi_buddy/features/widgets/bmi_result_view.dart';
import 'package:bmi_buddy/models/bmi_model.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  double _bmi = 0.0;
  BMI _bmiResult = BMIModel().getBMIResult(0.0);
  bool _isShowResult = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: _appBar(context),
      body: _content(size),
    );
  }

  Padding _content(Size size) {
    void calculateBMI(double weight, double height) {
      setState(() {
        _isShowResult = true;
        _bmi = weight / (height * height) * 10000;
        _bmiResult = BMIModel().getBMIResult(_bmi);

        _closeResultArea();
      });
    }

    void resetFields(TextEditingController weightController,
        TextEditingController heightController) {
      weightController.clear();
      heightController.clear();
    }

    return Padding(
      padding: EdgeInsets.all(size.width * 0.1),
      child: Center(
        child: Column(
          children: [
            AppTextField(controller: weightController, textFieldType: 'Weight'),
            SizedBox(
              height: size.height * 0.03,
            ),
            AppTextField(controller: heightController, textFieldType: 'Height'),
            SizedBox(
              height: size.height * 0.07,
            ),
            AppButton(
              onPressed: () {
                if (weightController.text.isEmpty ||
                    heightController.text.isEmpty) {
                  return;
                }

                calculateBMI(
                  double.parse(weightController.text),
                  double.parse(heightController.text),
                );

                resetFields(
                  weightController,
                  heightController,
                );
              },
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            Visibility(
              visible: _isShowResult,
              child: BMIResultView(bmi: _bmiResult, bmiValue: _bmi),
            ), // Güncellenen değerler burada gösteriliyor
          ],
        ),
      ),
    );
  }

  void _closeResultArea() {
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        _isShowResult = false; // 5 saniye sonra sonuç kaybolacak
      });
    });
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      title: Text(
        'BMI Buddy',
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );
  }
}
