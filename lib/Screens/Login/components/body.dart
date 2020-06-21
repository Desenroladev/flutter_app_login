import 'package:app_login/Screens/Login/components/backgroud.dart';
import 'package:app_login/Screens/Signup/signup_screen.dart';
import 'package:app_login/components/already_have_an_account_check.dart';
import 'package:app_login/components/rounded_button.dart';
import 'package:app_login/components/rounded_input_field.dart';
import 'package:app_login/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Backgroud(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.35,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedInputField(
              hintText: "You Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              hintText: "Password",
              onChanged: (value) {},
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RoundedButton(
              text: "LOGIN",
              press: () {},
            ),
            AlreadyHaveAnAccountCheck(
              login: true,
              press: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return SignUpScreen();
                  },
                ));
              },
            )
          ],
        ),
      ),
    );
  }
}
