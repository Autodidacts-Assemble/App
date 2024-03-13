import 'package:auth_firebase/services/auth.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {


  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        title: Text('DemoHome'),
        backgroundColor: Colors.blue,
        elevation: 0.0,
        actions: <Widget>[
          ElevatedButton.icon(
            icon: Icon(Icons.person),
            label: Text('Logout'),
            onPressed: () async{
                await _auth.signOut();
            },
          )
        ],
      ),
    );
  }
}
