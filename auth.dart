// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'home.dart';
class Auth extends StatelessWidget {
   Auth({super.key});
final _textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: [
            Image.asset(
              'assets/images/download.jpeg',
               width: 200, 
             height: 200,
            ),
            SizedBox(height: 10),

            Text('whats your first name',
            style: TextStyle(
            fontSize: 20,
            
            ),),
             SizedBox(height: 10),
           TextField(
           controller: _textController, 
            decoration: InputDecoration(
             labelText: 'Enter your name', 
              border: OutlineInputBorder(), 
                 ),
                       ),
                        SizedBox(height: 10),
            ElevatedButton(onPressed: (){
              String enteredName = _textController.text;
                   Navigator.push(context, MaterialPageRoute(builder:
                   (context) =>  Home(name: enteredName),
                   ),);
            },
            child: Text('start odering'),
            )
          ],
        ),
      ),
    );
  }
}