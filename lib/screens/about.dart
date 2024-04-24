import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  
       
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child:Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
        
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('About' , style: TextStyle( 
                        fontFamily: 'san serif',
                        fontSize: 34,
                        fontWeight: FontWeight.bold, 
                        color: Colors.black,
                       
                        ),
                       ), 
                         ],
            ),
                        Row(mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Version CA.108.0", style: TextStyle( 
                            fontFamily: 'san serif', 
                            color: Colors.black,
                                                   ),
                                                   ),
                          ],
                        ),
            
      SizedBox(height: 60,),
       Row(mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Icon(Icons.star),
         
       
       Text(" Rate the app"),
       ],
       ),
       Divider(height: 20,),
       Row(mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Icon(Icons.thumb_up),
         
       Text( "  Like us on Facebook"),
       ],
       ),
      Divider(height: 20,),
       Row(mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Icon(CupertinoIcons.briefcase),
        
       Text( "  Solutions for work rides"),
        ],
       ),
       Divider(height: 20,),
       Row(mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Icon(
            CupertinoIcons.heart),
        
       Text( "  Careers at Bolt"),
        ],
       ),
       Divider(height: 20,),
       Row(mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Icon(Icons.house_outlined),
      
       Text( "  Legal"),
          ],
       ),
       Divider(height: 20,),
       Row(mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Icon(CupertinoIcons.doc),
       
       Text( "  Acknowledgements"),
         ],
       ),
       Divider(height: 20,),
       Row(mainAxisAlignment: MainAxisAlignment.start,
         children: [
           Icon(CupertinoIcons.doc),
      
       Text( "  Privacy"),   
       ],
       ),
            ],
            
        ),
      ),
      ),
    );
  }
}