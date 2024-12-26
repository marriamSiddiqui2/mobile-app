// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'page4.dart';
class Skills extends StatelessWidget {
  const Skills({super.key});
 
  @override
  Widget build(BuildContext context) {
    // double skillper=50.0;
double skillper=80.0;
    double totalper=100.0;
    double skillp=(skillper/totalper)*100.0;
    double containerwidth=200.0;
    double fluwidth=(skillper/100.0)*containerwidth;
    
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Container(
              child: const Text('skills'),
          ),
              Container(
                child: const Text('flutter'),
              ),
              Container(
                width: containerwidth,
                height: 20,
                color: const Color.fromARGB(255, 61, 12, 26),
                child: Container(
                  width: fluwidth,
                  height: 20,
                  color: const Color.fromARGB(255, 230, 222, 201),
                ),
              ),
              Container(
                child: const Text('dart'),
              ),
              Container(
                width: containerwidth,
                height: 20,
                color: const Color.fromARGB(255, 71, 64, 66),
                child: Container(
                  width: fluwidth,
                  height: 20,
                  color: const Color.fromARGB(255, 199, 162, 68),
                ),
              ),
              Container(
                child: const Text('ui/ux design'),
              ),
              Container(
                width: containerwidth,
                height: 20,
                color: const Color.fromARGB(255, 71, 64, 66),
                child: Container(
                  width: fluwidth,
                  height: 20,
                  color: const Color.fromARGB(255, 230, 222, 201),
                ),
              ),
              Center(
                
                 child:  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: 
                    (context)=> const Me4()),
                    );
                  },
                       child:const Text ('for further details........'),
                   )
                
              )
            ],
          )
        ],
      ),
    );
  }
}