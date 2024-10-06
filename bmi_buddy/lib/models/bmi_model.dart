class BMIModel {
  BMI getBMIResult(double bmi) {
    switch (bmi) {
      case double n when n < 18.5:
        return BMI(
            weightType: 'Weak',
            description:
                'It shows that you are underweight, not at the appropriate weight for your height. Underweight is an undesirable condition that poses a risk for some diseases. In order to reach the appropriate weight for your height, you should eat adequate and balanced nutrition and take care to improve your eating habits.');
      case double n when n >= 18.5 && n < 24.9:
        return BMI(
            weightType: 'Normal',
            description:
                'It indicates that you are at an appropriate weight for your height. Take care to maintain this weight by eating an adequate and balanced diet and engaging in regular physical activity.');
      case double n when n >= 25.0 && n < 29.9:
        return BMI(
            weightType: 'Overweight',
            description:
                'It indicates that your body weight is too much for your height. Being overweight leads to obesity, which is a risk factor for many diseases if necessary precautions are not taken.');
      case double n when n >= 30.0:
        return BMI(
            weightType: 'Fat (Obese)',
            description:
                'It is an indication that your body weight is too much for your height, in other words, that you are overweight. Obesity is a risk factor for chronic diseases such as cardiovascular diseases, diabetes, hypertension, etc. It is very important for your health that you apply to a health institution and lose weight under the control of a physician / dietician and get down to normal weight. Please consult a health institution.');
      default:
        return BMI(
            weightType: 'Unknown',
            description: 'BMI value is not in a valid range.');
    }
  }
}

class BMI {
  final String weightType;
  final String description;

  BMI({required this.weightType, required this.description});
}
