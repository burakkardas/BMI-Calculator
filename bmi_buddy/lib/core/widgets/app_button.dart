import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onPressed});

  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: size.width,
        height: size.height * 0.065,
        decoration: _buttonDecoration(),
        child: Center(
          child: Text(
            'Calculate',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }

  BoxDecoration _buttonDecoration() {
    return BoxDecoration(
      color: Colors.teal,
      borderRadius: BorderRadius.circular(10),
    );
  }
}
