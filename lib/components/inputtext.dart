import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String label;
  final Function onChanged;
  final TextEditingController controller;
  const InputText({
    required this.label,
    required this.onChanged,
    required this.controller,
  });

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.label,
          hintStyle: TextStyle(color: Colors.grey[400])),
    );
  }
}
