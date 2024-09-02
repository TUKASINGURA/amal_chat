import 'package:amal_chat_meet/login%20and%20signup/signin.dart';
import 'package:amal_chat_meet/login%20and%20signup/signup.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 62, 80, 139),
              Color(0xff281537),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 100.0),
              child: Text(
                'Connect with friends easily & quickly',
                style: TextStyle(fontSize: 40, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Amal_chat is made to ensure that you \nstay connected with friends and family.',
                style: TextStyle(fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage('assets/facebook.png'),
                  height: 40,
                  width: 40,
                ),
                SizedBox(width: 20),
                Image(
                  image: AssetImage('assets/google.png'),
                  height: 40,
                  width: 40,
                ),
                SizedBox(width: 20),
                Image(
                  image: AssetImage('assets/twitter.png'),
                  height: 40,
                  width: 40,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                "_____________OR_____________",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SignupPage()));
              },
              child: Container(
                height: 53,
                width: 320,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 207, 203, 203),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(
                      color: const Color.fromARGB(255, 207, 203, 203)),
                ),
                child: const Center(
                  child: Text(
                    'SIGN UP WITH EMAIL',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SigninPage()));
              },
              child: const Text(
                'Already have an account? Login',
                style: TextStyle(fontSize: 17, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
