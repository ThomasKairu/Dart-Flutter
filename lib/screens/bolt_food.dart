import 'package:flutter/material.dart';

class BoltFood extends StatefulWidget {
  const BoltFood({super.key});

  @override
  State<BoltFood> createState() => _BoltFoodState();
}

class _BoltFoodState extends State<BoltFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Bolt Ride' , style: TextStyle( 
        fontFamily: 'san serif',
        fontSize: 34,
        fontWeight: FontWeight.bold, 
        color: Color.fromARGB(255, 25, 95, 105),
        ),
       ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child:Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Order your food now" ,style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,),
            ),
            ],
        ),
      ),
      ),
            
    );
  }
}