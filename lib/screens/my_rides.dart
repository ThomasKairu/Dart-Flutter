import 'package:flutter/material.dart';

class MyRides extends StatefulWidget {
  const MyRides({super.key});

  @override
  State<MyRides> createState() => _MyRidesState();
}

class _MyRidesState extends State<MyRides> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     appBar: AppBar(
          
        
      ),
     
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child:Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("My Rides" ,style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 200,),
          
            ],
        ),
        
      ),
      
      ),
      
    );
  }
}