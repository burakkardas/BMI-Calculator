import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField(
      {super.key, required this.controller, required this.textFieldType});

  final TextEditingController controller;
  final String textFieldType;
  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textFieldType,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.01,
          ),
          TextField(
            style: const TextStyle(
              color: Colors.teal,
            ),
            controller: controller,
            decoration: InputDecoration(
              hintText: 'Enter your $textFieldType',
            ),
          ),
        ],
      );
}
