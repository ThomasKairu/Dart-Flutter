import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        
      ),

      
      body:  SingleChildScrollView(
        scrollDirection: Axis.vertical,
     child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bolt balance', style: TextStyle(fontWeight: FontWeight.bold)),
                    SizedBox(height: 8.0),
                    Text('Ksh 0', style: TextStyle(fontSize: 18.0)),
                    SizedBox(height: 8.0),
                    Text('What is Bolt balance?', style: TextStyle(color: Colors.blue)),
                    SizedBox(height: 8.0),
                    Text('See Bolt balance transactions', style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Payment methods', style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView(
              children: const [
                ListTile(
                  leading: Icon(CupertinoIcons.money_pound),
                  title: Text('M-Pesa'),
                ),
                ListTile(
                  leading: Icon(Icons.money),
                  title: Text('Airtel money'),
                ),
                ListTile(
                  leading: Icon(Icons.money),
                  title: Text('Equitel'),
                ),
                ListTile(
                  leading: Icon(Icons.money),
                  title: Text('Cash'),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Add debit/credit card'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: () {
                
              },
              child: const Text('Set up work profile'),
            ),
          ),
        ],
      ),
      )
    );
  }
}