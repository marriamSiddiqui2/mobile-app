// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'auth.dart';
class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/download.jpeg',
               width: 500, 
             height: 500,
            ),
            SizedBox(height: 50),

            Text('GET fresh salad combo',
            style: TextStyle(
            fontSize: 20,
            
            ),),
            SizedBox(height: 50),
             Text('we deliver fresh salads ',
            style: TextStyle(
            fontSize: 20,
            
            ),),
            
            
              SizedBox(height: 50),
            ElevatedButton(onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder:
                   (context) => Auth()
                   ),);
            },
            child: Text('lets continue'),
            )
          ],
        ),
      ),
    );
  }
}