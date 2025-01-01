import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      onTapOutside: (event) {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        enabledBorder: buildBorder(),
        border: buildBorder(),
        focusedBorder: buildBorder(
          color: kPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
