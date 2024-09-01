/*import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:individualtest/Newsapi.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  void callApi() {
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Home',
        style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.all(32),
        child: user != null
            ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Signed in as'),
            SizedBox(height: 8),
            Text(
              user.email!,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: callApi,
                    child: Text('Check News')),
              ],
            )
          ],
        )
            : Center(child: Text('No user signed in')),
      ),
    );
  }
}
*/


