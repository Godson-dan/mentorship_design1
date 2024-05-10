import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mentorship_design1/Pages/log_in.dart';
import 'package:mentorship_design1/components/button.dart';
import 'package:mentorship_design1/components/main_button.dart';
import 'package:mentorship_design1/components/textfield.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

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
              ////////Create New Account//////////
              const Text(
                'Create New Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              ///////Full Name//////////
              const SizedBox(
                height: 25,
              ),

              const MyTextField(
                heading: 'Full Name',
                hintText: 'Ibekwe Adaeze',
              ),

              ///////Age//////////
              const SizedBox(
                height: 25,
              ),

              const MyTextField(
                heading: 'Age',
                hintText: 'Enter your age',
              ),

              ///////Gender////////
              const SizedBox(
                height: 25,
              ),

              const Text(
                'Gender',
                style: TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),

              const Row(
                children: [
                  Button(text: 'Male'), //Male
                  SizedBox(
                    width: 30,
                  ),
                  Button(text: 'Female'), //Female
                  SizedBox(
                    width: 30,
                  ),
                  Button(text: 'Others'), //Others
                ],
              ),

              //////////Email Address(Optional)////////////
              const SizedBox(
                height: 25,
              ),

              const MyTextField(
                heading: 'Email Address(Optional)',
                suffixText: '@gmail.com',
              ),

              //////////Password////////////////
              const SizedBox(
                height: 25,
              ),

              const MyTextField(
                heading: 'Password',
                hintText: '*********',
                icon: Icons.visibility_off,
              ),

              //////////Confirm Password////////////////
              const SizedBox(
                height: 25,
              ),

              const MyTextField(
                heading: 'Confirm Password',
                hintText: '*********',
                icon: Icons.visibility_off,
              ),

              //////////Privacy Policy///////////
              const SizedBox(
                height: 15,
              ),

              RichText(
                text: const TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: 'By clicking on Create Account, you agree to our ',
                    ),
                    TextSpan(
                      text: 'Privacy Policy ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: 'and ',
                    ),
                    TextSpan(
                      text: 'Terms of Use',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),

              /////////Create Account///////////
              const SizedBox(
                height: 15,
              ),

              const MainButton(text: 'Create Account'),

              //////////Log In/////////////
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
                      text: 'Already have an account? ',
                    ),
                    TextSpan(
                      text: 'Log In',
                      style: const TextStyle(
                        color: Color(0xFF39BA80),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => const LogIn()));
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
