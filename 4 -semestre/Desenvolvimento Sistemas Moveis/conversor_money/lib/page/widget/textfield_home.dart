// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class TextFormInput extends StatefulWidget {
  final String? Function(String?)? validator;
  final String labelText;
  final TextInputAction? textInputAction;
  final TextEditingController controller;

  const TextFormInput({super.key, required this.labelText, this.validator, required this.controller, this.textInputAction});

  @override
  _TextFormInputState createState() => _TextFormInputState();
}

class _TextFormInputState extends State<TextFormInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: widget.textInputAction ?? TextInputAction.next,
      controller: widget.controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        
        labelText: widget.labelText,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        setState(() {
           widget.validator?.call(value) != null;
        });
        return widget.validator?.call(value);
      },
          
    );
  }
}