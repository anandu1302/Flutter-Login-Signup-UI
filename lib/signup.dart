import 'package:flutter/material.dart';
import 'package:flutter_login_ui/app/constants/colors.dart';
import 'package:flutter_login_ui/app/constants/images.dart';
import 'package:flutter_login_ui/app/constants/sizes.dart';
import 'package:flutter_login_ui/login.dart';
import 'package:flutter_login_ui/widgets/custom_button.dart';
import 'package:flutter_login_ui/widgets/custom_textformfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final _signUpFormKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: Center(
          child: Form(
            key: _signUpFormKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    height: 220,
                    image: AssetImage(userAuthenticate),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Create Account',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  CustomTextFormField(
                    hintText: 'Name',
                    controller: nameController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  CustomTextFormField(
                    hintText: 'Email',
                    controller: emailController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 15),
                  CustomTextFormField(
                    hintText: 'Password',
                    controller: passwordController,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Choose your Password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  CustomButton(
                    buttonLabel: 'Sign Up',
                    onPressed: () {
                      if (_signUpFormKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return LoginScreen();
                            },
                          ),
                        );
                      }
                    },
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Already have an account ?',
                          style: TextStyle(fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return LoginScreen();
                                },
                              ),
                            );
                          },
                          child: Text(
                            ' Sign In',
                            style: TextStyle(
                              color: AColors.primary,
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
