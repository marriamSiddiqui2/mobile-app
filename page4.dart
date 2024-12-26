// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'page5.dart';
class Me4 extends StatelessWidget {
  const Me4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio Interest Section'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Interests:',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            
            Container(
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Mobile App Development',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  Text('Creating innovative and user-friendly mobile applications.'),
                ],
              ),
            ),
          
            Container(
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Web Development',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                
                  Text('Building responsive and scalable web applications.'),
                ],
              ),
            ),
            
            Container(
              padding: const EdgeInsets.all(30.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Machine Learning',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  Text('Exploring algorithms and models to extract insights from data.'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'UI/UX Design',
                    style: TextStyle(
                      fontSize: 28,                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  Text('Designing intuitive and visually appealing user interfaces.'),
                ],
              ),
            ),
            
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Cloud Computing',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  Text('Leveraging cloud platforms for efficient and scalable solutions.'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text(
                    'Open Source Contribution',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                
                  Text('Contributing to open source projects and communities.'),

                  Center(
                       
                 child:  ElevatedButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: 
                    (context)=> const Me5()),
                    );
                  },
                       child:const Text ('go to my last page'),
                   )
                  )
                ],
              
              ),
            
            ),
          ],
        ),
      ),
    );
  }
}