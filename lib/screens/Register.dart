import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:medical_app/models/widgets/GenderSelect.dart';
import 'package:medical_app/models/colors/MyColors.dart';
import 'package:medical_app/screens/verification.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({super.key});

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  bool _passwordVisible = false;

  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _genderSelect = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/logo1.png',
                    height: 100,
                    //color: Colors.blue[700],
                  ),

                  //Signup text
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  //Textfield displaying user details
                  TextField(
                    //fullname
                    controller: _fullNameController,
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      prefixIcon: const Icon(
                        Ionicons.person,
                        size: 15,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    //Email or phone number
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

                  const SizedBox(height: 10),
                  //Gender select
                  GenderFormField(),

                  const SizedBox(height: 20),
                  //Register button
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          MyColor.primaryColor),
                      fixedSize: MaterialStateProperty.all(
                        const Size(350, 50),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Verification(),
                        ),
                      );
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  Row(
                    children: const [
                      Icon(
                        Icons.check_circle,
                        color: Colors.blue,
                      ),
                      SizedBox(width: 20),
                      Text(
                        'By tapping "Sign Up" you accept our \nall terms and condition',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('Or Register With'),

                  const SizedBox(height: 25),
                  //sign in  options
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //facebook option
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: MyColor.primaryColor,
                            width: 1.5,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        height: 35,
                        width: 55,
                        child: const Icon(
                          Ionicons.logo_facebook,
                          color: MyColor.primaryColor,
                        ),
                      ),
                      const SizedBox(width: 8),
                      //google option
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: MyColor.primaryColor,
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
                            color: MyColor.primaryColor,
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
                      const Text('Already have an account?'),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: MyColor.primaryColor,
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
