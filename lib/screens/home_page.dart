//stateless widget (A widget that does not require mutable state.)




import 'package:bolt/screens/about.dart';

import 'package:bolt/screens/my_rides.dart';
import 'package:bolt/screens/payment.dart';
import 'package:bolt/screens/profile.dart';
import 'package:bolt/screens/promotions.dart';
import 'package:bolt/screens/expense_your_ride.dart';
import 'package:bolt/screens/support.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});


@override
    Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
       child: ListView(
    
        children: [
          
          ListTile(
             
            leading: const Icon(Icons.person_2_sharp),
            title: const Text('Name'),
            subtitle: const Text('My Account'),
            onTap: () => {Navigator.push(
              context, MaterialPageRoute<void>(
      builder: (BuildContext context) => const Profile()  
            )
            )
            },
            
          ),
          const Row(
            children: [
                Icon(Icons.star, color: Colors.green, ),
            
             Text('4.5 Rating'),
            ],
          ),
            const Divider(
   
              height: 10,
              thickness: 10,
                
            ),
         
          ListTile(
            leading: const Icon(Icons.account_balance_wallet),
            title: const Text("Payment"),
            onTap: () => {Navigator.push(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const Payment(),
    ),
            
  ),
 },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.tag),
            title: const Text("Promotions"),
            subtitle: const Text('Enter promo code'), 
            onTap: () =>  {Navigator.push(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const Promotions(),
    ),
            
  ),
 },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.clock),
            title: const Text("My Rides"),
            onTap: () => {{Navigator.push(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const MyRides(),
    ),
            ),
            },

            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.briefcase),
            title: const Text("Expense Your Ride"),
            onTap: () => {{Navigator.push(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const ExpenseYourRide(),
    ),
            ),
            },

            },
          ),
          ListTile(
            leading: const Icon(CupertinoIcons.question_circle),
            title: const Text("Support"),
            onTap: () => {{Navigator.push(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const Support(),
    ),
            ),
            },

            },
          ),
          ListTile(
            leading: const Icon(Icons.info_rounded),
            title: const Text("About"),
            onTap: () => {
                    {Navigator.push( context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const About(),
    ),
            ),
            },
            },
          ),
          const Divider(
   
              height: 10,
              thickness: 10,
                
            ),
            const Spacer(),
              const SizedBox(height: 30),
              const Spacer(),
           ListTile(
            leading: const Icon(Icons.restaurant),
            title: const Text("Bolt Food"),
            onTap: () => {
                    {Navigator.push( context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const HomePage(),
    ),
            ),
            },
            },
          ), 
        ],
        
       ),
       
       
      ),
      appBar: AppBar(
        title: const Text('Bolt App' , style: TextStyle( 
        fontFamily: 'san serif',
        fontSize: 34,
        fontWeight: FontWeight.bold, 
        color: Color.fromARGB(255, 25, 95, 105),
        ),
       ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(220, 255, 255, 255),

        
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child:Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "I am a child of Column 1",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 15),
           Padding(
            padding: EdgeInsets.all(18),
            child: TextField(
              decoration: InputDecoration(
                hintText: "I am a child of Column 2",
                border: OutlineInputBorder(),
              ),
            ),
          ),
           SizedBox(height: 15),
          Padding(
            padding:  EdgeInsets.all(18),
            child: TextField(
              decoration: InputDecoration(
                hintText: "I am a child of Column 3",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(height: 15),
           Padding(
            padding: EdgeInsets.all(18),
            child: TextField(
              decoration: InputDecoration(
                hintText: "I am a child of Column 4",
                border: OutlineInputBorder(),
              ),
            ),
          ),
         SizedBox(height: 15),
           Padding(
            padding: EdgeInsets.all(18),
            child: TextField(
              decoration: InputDecoration(
                hintText: "I am a child of Column 5",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          
        ],
      ),
      ),
      ),
);
  }
}



 
      
  
