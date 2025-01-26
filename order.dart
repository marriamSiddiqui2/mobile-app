// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/complete.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text(
            'MY BASKET',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
         ),
         body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
           child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/download.jpeg'),
                  SizedBox(width: 100),
                  Text('qui salad '),
                  SizedBox(width: 100),
                   Text('rs:2200'),
           
                ],
              ),
              SizedBox(height: 50,),
               Row(children: [
                  Image.asset('assets/images/download.jpeg'),
                  SizedBox(width: 100),
                  Text('qui salad '),
                  SizedBox(width: 100),
                   Text('rs:2200'),
                ],),
               SizedBox(height: 50,),
               Row(children: [
                  Image.asset('assets/images/download.jpeg'),
                  SizedBox(width: 100),
                  Text('qui salad '),
                  SizedBox(width: 100),
                   Text('rs:2200'),
                ],),
               SizedBox(height: 50,),
                Row(
           mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('total: 19200'),
                   
                SizedBox(width: 50),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute
                  (builder: (context) => Complete()
                  )
                  );
                }
                , 
                child: Text('checkout'),
                )
              ],
                ),
            ],
           ),
         ),
    );}}
