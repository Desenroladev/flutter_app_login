import 'package:app_login/components/text_field_conteiner.dart';
import 'package:app_login/contants.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;

  const RoundedPasswordField({
    Key key,
    this.onChanged,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldConteiner(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
            hintText: hintText,
            icon: Icon(
              Icons.lock,
              color: kPrimaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: kPrimaryColor,
            ),
            border: InputBorder.none),
      ),
    );
  }
}
