import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {

  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Log In'),
  //     ),
  //   );
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAF0CA), 
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Log In',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Myanmar Khyay',
                  color: Color(0xFF0D3B66),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFEFB),//Color(0xFFFAF0CA),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: _usernameController,
                    style: const TextStyle(
                      fontFamily: 'Myanmar Khyay',
                      color: Color(0xFF0D3B66),
                    ),
                    decoration: const InputDecoration(
                      hintText: 'Username',
                      border: InputBorder.none,
                      hintStyle: TextStyle(
                        fontFamily: 'Myanmar Khyay',
                        color: Color(0xFF0D3B66)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFFFFEFB),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    controller: _passwordController,
                    style: const TextStyle(
                      fontFamily: 'Myanmar Khyay',
                      color: Color(0xFF0D3B66)
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      hintStyle: const TextStyle(
                        fontFamily: 'Myanmar Khyay',
                        color: Color(0xFF0D3B66)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your logic for authentication here
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFF4D35E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text('Sign In',
                    style: TextStyle(
                    fontFamily: 'Myanmar Khyay',
                    color: Color(0xFF0D3B66), // Text color: 0D3B66
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
