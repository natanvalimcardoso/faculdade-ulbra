import 'package:flutter/material.dart';

class TextFormInput extends StatefulWidget {
  final String? Function(String?)? validator;
  final String labelText;
  final TextEditingController controller;

  TextFormInput({super.key, required this.labelText, this.validator, required this.controller});

  @override
  // ignore: library_private_types_in_public_api
  _TextFormInputState createState() => _TextFormInputState();
}

class _TextFormInputState extends State<TextFormInput> {
bool _showError = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        
        labelText: widget.labelText,
         labelStyle: TextStyle(color: _showError ? Colors.red : Colors.black),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        setState(() {
          _showError = widget.validator?.call(value) != null;
        });
        return widget.validator?.call(value);
      },
          
    );
  }
}