import 'package:flutter/material.dart';

class MyAlertBox extends StatelessWidget {
  final controller;
  final String hintText;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const MyAlertBox({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(8.0) ),
      backgroundColor: Colors.grey[900],
      content: TextField(
        controller: controller,
        style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey[600]),
          border: const UnderlineInputBorder(),
        ),
      ),
      actions: [
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5.0) ),
          onPressed: onSave,
          color: Colors.white,
          child: const Text(
            "Save",
            style: TextStyle(color: Colors.black),
          ),
        ),
        MaterialButton(
          shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5.0) ),
          onPressed: onCancel,
          color: Colors.black,
          child: const Text(
            "Cancel",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
