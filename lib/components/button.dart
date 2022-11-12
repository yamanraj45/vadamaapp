import 'package:flutter/material.dart';

class VidyalaButton extends StatefulWidget {
  final String label;
  final Function onPress;
  const VidyalaButton({super.key, required this.label, required this.onPress});

  @override
  State<VidyalaButton> createState() => _VidyalaButtonState();
}

class _VidyalaButtonState extends State<VidyalaButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
        child: Text(widget.label),
        style: TextButton.styleFrom(
          foregroundColor: Colors.teal,
          shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
        ),
        onPressed: () => widget.onPress);
  }
}
