import 'package:flutter/material.dart';


class Support extends StatefulWidget {
  const Support({super.key});

  @override
  State<Support> createState() => _SupportState();
}

class _SupportState extends State<Support> {
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
            Text("Support" ,style: TextStyle(
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