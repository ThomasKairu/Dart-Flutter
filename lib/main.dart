


import 'package:bolt/screens/Login.dart';
import 'package:bolt/screens/splash_screen.dart';

 import 'package:firebase_core/firebase_core.dart';
 import 'firebase_options.dart';
import 'package:flutter/material.dart';
 //By default it comes with this as an import in flutter framework. We can use all it has because its imported.

void main() async{
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bolt',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 9, 105, 214)),
        useMaterial3: true,brightness: Brightness.light
      ),
      home: const SplashScreen()
    );
  }
}


  
