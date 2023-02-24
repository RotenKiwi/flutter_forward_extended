import 'package:flutter/material.dart';
import '../Components/textfield.dart';
import '../Constants.dart' as constant;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constant.textPrimary,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Container()),
          Image.network(
              'https://imgs.search.brave.com/XT0pOuTqnIVi3KPk8qDqkaBURRfANPwQXnvLJWYmB6A/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Uy/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5m/dEtmWl8wMU1jaGlh/LV9pQ1NUUDRBSGFI/YSZwaWQ9QXBp'),
          textfield(
            text: 'E-mail',
            isPassword: false,
          ),
          textfield(
            text: 'Password',
            isPassword: true,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(40.0),
            child: Container(
              width: 180,
              color: constant.dayPrimary,
              child: TextButton(
                style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          20.0,
                        ),
                        side: BorderSide(
                          width: 2,
                          color: constant.dayPrimary,
                        ))),
                onPressed: () {},
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: constant.textPrimary,
                  ),
                ),
              ),
            ),
          ),
          Expanded(child: Container())
        ],
      ),
    );
  }
}
