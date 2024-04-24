import 'dart:async';


import 'package:bolt/screens/auth%20copy.dart';


import 'package:flutter/material.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState(){
    super.initState();
   Timer(const Duration(seconds: 4), 
          ()=>Navigator.pushReplacement(context, MaterialPageRoute
          (builder: (context)=> const Auth()
      ),
      ),
      );
    }
      @override
      Widget build(BuildContext context){
        return Scaffold(
          backgroundColor:  Colors.white,
          body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
             children:[
              Center(child: Image.asset('assets/images/bolt.jpg' ,)),
              const SizedBox(height :65),
              const CircularProgressIndicator()
             ],
            ),
          ),
          ),
        );
      }
     }
     
  

