import 'package:flutter/material.dart';

class FormTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? textController;
  final bool? obscureText;
  final TextInputType? inputType;
  final String? Function(String?)? inputValidator;

  const FormTextField(
      {super.key,
      this.labelText,
      this.hintText,
      this.textController,
      this.obscureText,
      this.inputType,
      this.inputValidator});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: TextFormField(
        controller: textController,
        keyboardType: inputType,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
        obscureText: obscureText ?? false,
        validator: inputValidator,
      ),
    );
  }
}
