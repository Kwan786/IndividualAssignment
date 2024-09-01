/*import 'dart:core';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:individualtest/Homepage.dart';


class AuthServices{
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> registerWithEmailPassword(
      BuildContext context, String email, String password) async{
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
      );
      WidgetsBinding.instance.addPostFrameCallback((_) {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(
                'Register Successfully: ${userCredential.user?.email}')
            ));
      });
      } on FirebaseAuthException catch(e) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (e.code == 'weak-password') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Weak password')),
          );
        } else if (e.code == 'email-already-in-use') {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Email Existed!')),
          );
        }
      });
    }}
  Future<void> signInWithEmailPassword(
      BuildContext context, String email, String password) async {
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
    }}

}

void signOutUser(){
  FirebaseAuth.instance.signOut();
}
*/
