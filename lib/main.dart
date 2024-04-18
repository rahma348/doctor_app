



import 'package:doctor_app/pages/notification.dart';
import 'package:flutter/material.dart';
import 'package:doctor_app/pages/Edit%20Profile.dart';
import 'package:doctor_app/pages/Manage.dart';
import 'package:doctor_app/pages/home.dart';
import 'package:doctor_app/pages/login.dart';
import 'package:doctor_app/pages/logo.dart';
import 'package:doctor_app/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   initialRoute:  "/",
      debugShowCheckedModeBanner: false,
       theme: ThemeData.light(useMaterial3: true),
  routes: {
    "/" :  (context) => const Logo(),
    "/Login" :  (context) => const Login(),
    "/homepage" :  (context) => const Home(),
    "/Profile" :  (context) => const Profile(),
    "/EditProfile" :  (context) => const EditProfile(),
    "/Manage" :  (context) => const Manage(),
    "/Notifications" :  (context) => const Notifications(),

  },
    );
  }
}