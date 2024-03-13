import 'package:auth_firebase/models/user.dart';
import 'package:auth_firebase/screen/auth/auth.dart';
import 'package:auth_firebase/screen/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:auth_firebase/models/user.dart';
class wrapper extends StatelessWidget {
  const wrapper({super.key});

  @override
  Widget build(BuildContext context) {

    final user = Provider.of<MyUser?>(context);
    if(user==null){
      return Auth();
    }
    else{
      return home();
    }
  }
}
