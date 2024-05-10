import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_design1/Pages/create_account.dart';
import 'package:mentorship_design1/components/main_button.dart';
import 'package:mentorship_design1/components/textfield.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.symmetric(vertical: 20)),
              ////////Forgot Password//////////
              const Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              //////////Text/////////////
              const SizedBox(
                height: 10,
              ),

              const Text(
                'Not to worry,just put in the email you used in signing up.',
              ),

              ////////Email Address////////
              const SizedBox(
                height: 25,
              ),
              const MyTextField(
                heading: 'Email Address',
                suffixText: '@gmail.com',
                obscureText: false,
              ),

              /////////Forgot Password////////
              const SizedBox(
                height: 15,
              ),

              const MainButton(text: 'Forgot Password'),

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
      ),
    );
  }
}
