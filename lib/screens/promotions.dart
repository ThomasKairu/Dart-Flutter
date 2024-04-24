import 'package:bolt/screens/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Promotions extends StatefulWidget {
  const Promotions({super.key});

  @override
  State<Promotions> createState() => _PromotionsState();
}

class _PromotionsState extends State<Promotions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Promotions',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                          ),
                ],
              ),
             const SizedBox(height: 20,),
              const Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(CupertinoIcons.tag,),
                
              Text( " Enter promo code"),
              ],
              ),
              const SizedBox(height: 60,),
              const Divider(height: 10,
              thickness: 10,),
              const Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Your promotions',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              
      
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('30% promo for 3 rides'),
                      const SizedBox(height: 16),
                      const Text('Maximum promo Ksh 400'),
                      const Divider(),
                      const SizedBox(height: 6),
                      ElevatedButton(
                        onPressed: () {Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomePage(),
                      ),
                        );
                      },
                        child: const Text('APPLY'),
                      ),
                      const SizedBox(height: 8),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text('13 days left'),
                      ),
                    ],
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