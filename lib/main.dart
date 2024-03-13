
import 'package:auth_firebase/models/user.dart';
import 'package:auth_firebase/screen/wrapper.dart';
import 'package:auth_firebase/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';





Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<MyUser?>.value(
      catchError: (_,__) {},
      value:AuthService().user,
      initialData:null,
      child: const MaterialApp(
        home: wrapper(),
      ),
    );
  }
}


