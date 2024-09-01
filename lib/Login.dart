import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:individualtest/Homepage.dart';
import 'package:individualtest/main.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void dispose(){
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Login',
        style: TextStyle(
          color: Colors.white
        ),),
      ),
      backgroundColor: Colors.deepPurple[100],
      body: Center(
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      TextField(
        controller: emailController,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            labelText: 'Enter Email'
        ),
      ),
      TextField(
        controller: passwordController,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            labelText: 'Enter Password'
        ),
        obscureText: true,
      ),
      SizedBox(height: 20,width: 40,),
      ElevatedButton(onPressed: signIn, child: Text('Login'))
    ],
    ),
    ),));
  }
  Future signIn() async {
    try {
      FirebaseAuth.instance.setLanguageCode("en");
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      // Navigate to Homepage or another screen on successful login
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Homepage(),
      ));
    } on FirebaseAuthException catch (e) {
      String message = 'An error occurred';
      if (e.code == 'user-not-found') {
        message = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        message = 'Wrong password provided.';
      } else if (e.code == 'invalid-email') {
        message = 'Invalid email address.';
      }
      // Show error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

}