
import 'package:app_login/contants.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: Row(
        children: [
          buildDivider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: size.height * 0.02),
            child: Text(
              "OR",
              style: TextStyle(
                color: kPrimaryColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}
