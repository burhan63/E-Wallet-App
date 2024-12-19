import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hackathone_test/Contacts.dart';
import 'package:hackathone_test/DashboardScreen.dart';
import 'package:hackathone_test/LoginScreen.dart';
import 'package:hackathone_test/SignUpScreen.dart';
import 'package:hackathone_test/Tansctionscreen.dart';
import 'package:hackathone_test/TranserOptions.dart';
import 'package:hackathone_test/TranserToFriend.dart';
import 'package:hackathone_test/Transfertobank.dart';

import 'package:hackathone_test/firebase_options.dart';
import 'package:hackathone_test/testing.dart';

void main() async {
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
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Transferscreen());
  }
}
