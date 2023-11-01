import 'package:flutter/material.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medical_app/models/widgets/button_view.dart';
import 'package:medical_app/screens/home.dart';
import 'package:medical_app/screens/landing_page.dart';
import 'package:medical_app/screens/widget.dart';

class WelcomeBack extends StatefulWidget {
  const WelcomeBack({super.key});

  @override
  State<WelcomeBack> createState() => _WelcomeBackState();
}

class _WelcomeBackState extends State<WelcomeBack> {
  bool _passwordVisible = false;
  final FocusNode _focusNode = FocusNode();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo1.png',
                    height: 100,
                  ),

                  //Welcome back text
                  const Text(
                    'Welcome Back',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),

                  //Spring Medilab
                  const Text(
                    'Spring MediLab',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 30),
                  TextField(
                    //Email or phone number
                    focusNode: _focusNode,

                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email or Phone',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        Ionicons.paper_plane,
                        size: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    //password
                    obscureText: !_passwordVisible,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        Ionicons.shield,
                        size: 15,
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),
                  //Register button
                  ButtonView(
                      onPressed: () {
                        NavigationHelper.navigateToPage(
                            context, const LandingPage());
                      },
                      child: const Text("Login")),
                  const SizedBox(height: 20),

                  Row(
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                      ),
                      const SizedBox(width: 10),

                      //keep me sign in
                      const Text(
                        'Keep Sign In',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),

                      //Forgot password
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: MyColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const Text('Or Login With'),

                  const SizedBox(height: 25),
                  //sign in  options
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //facebook option
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: MyColors.primaryColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 35,
                        width: 55,
                        child: const Icon(
                          Ionicons.logo_facebook,
                          color: MyColors.primaryColor,
                        ),
                      ),
                      const SizedBox(width: 8),
                      //google option
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: MyColors.primaryColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 35,
                        width: 55,
                        child: const Icon(
                          Ionicons.logo_google,
                          color: Colors.red,
                        ),
                      ),
                      const SizedBox(width: 10),
                      //apple option
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: MyColors.primaryColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 35,
                        width: 55,
                        child: const Icon(
                          Ionicons.logo_apple,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?'),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: MyColors.primaryColor,
                          ),
                        ),
                      ),
                    ],
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
