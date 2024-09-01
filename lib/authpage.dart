/*import 'dart:math';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:individualtest/Homepage.dart';
import 'package:individualtest/Service/auth_services.dart';
import 'package:flutter/material.dart';
import 'package:individualtest/authpage.dart';

class Authpage extends StatefulWidget {
  const Authpage({super.key});

  @override
  State<Authpage> createState() => _AuthpageState();
}
class _AuthpageState extends State<Authpage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final AuthServices _authServices = AuthServices();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _register() async {
    await _authServices.registerWithEmailPassword(
      context,
      _emailController.text,
      _passwordController.text,);
  }
  Future<void> _login() async {
    await _authServices.signInWithEmailPassword(
        context,
        _emailController.text,
        _passwordController.text);
  }
  void _showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Error',),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Welcome',
        style: TextStyle(
          color: Colors.white,
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
    controller: _emailController,
    style: TextStyle(
    color: Colors.black,
    ),
    decoration: InputDecoration(labelText: 'Enter Email',
    labelStyle: TextStyle(
    color: Colors.black,
    )),
    ),
    TextField(
    controller: _passwordController,
    style: TextStyle(
    color: Colors.black,
    ),
    decoration: InputDecoration(labelText: 'Enter Password',
    labelStyle: TextStyle(
    color: Colors.black,
    )),
    obscureText: true,
    ),
    Padding(padding: EdgeInsets.all(20.0)),
    SizedBox(height: 50,width: 340,
    child: ElevatedButton(
      onPressed: () async {
        String email = _emailController.text;
        String password = _passwordController.text;

        if (email.isEmpty || password.isEmpty) {
          _showErrorDialog(context, 'Please fill in all fields.');
          return;
        }
        try{
          UserCredential userCredential = await _auth.signInWithEmailAndPassword(
            email: email,
            password: password,
          );
          WidgetsBinding.instance.addPostFrameCallback((_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Login Succesfull: ${userCredential.user?.email}')),
            );
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const Homepage()),);
          });
        } on FirebaseAuthException catch(e){
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (e.code == 'user-not-found'){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Invalid user!')),
              );
            } else if (e.code == 'wrong-password'){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Wrong Password!')),
              );
            }
          });
        }
      }, child: Text('Login',
      style: TextStyle(
        color: Colors.black,
      ),),

    ),)
    ])
  )));
}
  }
*/