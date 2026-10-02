import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final int lines;
  final void Function(String) onChanged;

  const InputField({super.key, required this.controller,
    required this.title, required this.lines, required this.onChanged,});

  @override
  Widget build(BuildContext context) {
    return TextField(controller: controller,
        minLines: lines,
        maxLines: lines,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme
                  .of(context)
                  .primaryColor)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Theme
                  .of(context)
                  .primaryColor)),
          labelText: title, // TODO
        ),
      onChanged: onChanged,
    );
  }
}