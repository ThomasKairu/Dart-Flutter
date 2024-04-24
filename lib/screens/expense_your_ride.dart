import 'package:bolt/main.dart';
import 'package:bolt/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class ExpenseYourRide extends StatefulWidget {
  const ExpenseYourRide({super.key});

  @override
  State<ExpenseYourRide> createState() => _ExpenseYourRideState();
}

class _ExpenseYourRideState extends State<ExpenseYourRide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        

        
      
      ),
       body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
      child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Icon(CupertinoIcons.briefcase, size: 48),
                  SizedBox(width: 16),
                  Icon(CupertinoIcons.car, size: 48, color: Color.fromARGB(255, 183, 170, 170),),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Expense your work rides with ease',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text('Meet the Bolt Work Profile'),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:  [
                      Icon(Icons.check_circle, color: Colors.green),
                      SizedBox(width: 8),
                      Text(softWrap: true,'Connect Work Profile to your company expense provider'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green),
                      SizedBox(width: 8),
                      Text('Get VAT receipts sent to your work email'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green),
                      SizedBox(width: 8),
                      Text('See monthly reports with ride details'),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.check_circle, color: Colors.green),
                      SizedBox(width: 8),
                      Text('Add a second payment card if needed'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            
            Center(
              child: ElevatedButton(
                  onPressed: () {Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const HomePage(),
                      ),
                        );
                      },
                  child: const Text('Get started'),
                 ),
            ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text('Need transport for your whole team?'),
              ),
            

             


            Center(
              child: ElevatedButton(
                onPressed: () {Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const HomePage(),
                      ),
                        );
                      },
                child: const Text('Set up a Bolt Business account'),
              ),
            ),
          
            
          ],
        ),
      ),
    );
  }
}