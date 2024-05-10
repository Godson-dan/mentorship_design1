import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_design1/Pages/create_account.dart';
import 'package:mentorship_design1/Pages/forgot_password.dart';
import 'package:mentorship_design1/components/main_button.dart';
import 'package:mentorship_design1/components/textfield.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
            ////////Welcome Back//////////
            const Text(
              'Welcome Back',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            ///////Email Address//////////
            const SizedBox(
              height: 25,
            ),

            const MyTextField(
              heading: 'Email Address',
              hintText: 'Ibekwe Adaeze',
            ),

            ///////Password//////////
            const SizedBox(
              height: 25,
            ),

            const MyTextField(
              heading: 'Password',
              hintText: '*********',
              obscureText: true,
              icon: Icons.visibility_off,
            ),

            ////////Forgot Password/////////
            const SizedBox(
              height: 10,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const ForgotPassword()));
                  },
                  child: const Text(
                    'Forgot Password',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),

            /////////Log in///////////
            const SizedBox(
              height: 20,
            ),

            const MainButton(text: 'Log In'),

            /////////Create an Account///////
            const SizedBox(
              height: 10,
            ),

            RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                children: [
                  const TextSpan(
                    text: 'Don\'t have an account? ',
                  ),
                  TextSpan(
                    text: 'Create an Account',
                    style: const TextStyle(
                      color: Color(0xFF39BA80),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const CreateAccount()));
                      },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
