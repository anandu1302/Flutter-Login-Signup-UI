import 'package:flutter/material.dart';
import 'package:flutter_login_ui/signup.dart';
import 'package:flutter_login_ui/app/constants/colors.dart';
import 'package:flutter_login_ui/app/constants/images.dart';
import 'package:flutter_login_ui/app/constants/sizes.dart';
import 'package:flutter_login_ui/widgets/custom_button.dart';
import 'package:flutter_login_ui/widgets/custom_icons.dart';
import 'package:flutter_login_ui/widgets/custom_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(defaultPadding),
        child: Center(
          child: Form(
            key: _loginFormKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Enter your email and password to securely access your account and manage your services',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14, color: AColors.grey),
                  ),
                ),
                SizedBox(height: 30),
                CustomTextFormField(
                  hintText: 'Email',
                  icon: Icons.email,
                  controller: _emailController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 20),
                CustomTextFormField(
                  hintText: 'Password',
                  icon: Icons.lock,
                  controller: _passwordController,
                  isPassword: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 30),
                CustomButton(
                  buttonLabel: 'Login',
                  onPressed: () {
                    if (_loginFormKey.currentState!.validate()) {
                      debugPrint('Email ${_emailController.text}');
                      debugPrint('Password ${_passwordController.text}');
                    }
                  },
                ),
                SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account ?',
                        style: TextStyle(fontSize: 16),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return RegisterScreen();
                              },
                            ),
                          );
                        },
                        child: Text(
                          ' Sign Up',
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
                SizedBox(height: 20),
                Divider(thickness: 1.5),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    ' Or Continue with Account',
                    style: TextStyle(fontSize: 16, color: AColors.grey),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomIcons(imagePath: facebookIcon),
                    CustomIcons(imagePath: googleIcon),
                    CustomIcons(imagePath: appleIcon)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
