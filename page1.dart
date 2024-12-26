// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:flutter_application_1/page4.dart';
import 'page2.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Text(
              'My Portfolio',
              style: TextStyle(
                fontSize: 40, 
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'MARRIAM SIDDIQUI',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            
            Text(
              'hey, '
              'I AM MOBILE APP DEVELOPER AND DESIGNER',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                  Navigator.push(
                          context,
                        MaterialPageRoute(builder: (context) =>   Me4()),
                     );
                  }, 
                  icon: Icon(Icons.facebook),
                ),
                IconButton(
                  onPressed: () {
                   Navigator.push(
                        context,
                           MaterialPageRoute(builder: (context) =>   Me4()),
                );
                  }, 
                  icon: Icon(Icons.facebook),
                ),
                IconButton(
                  onPressed: () {Navigator.push(
                  context,
                 MaterialPageRoute(builder: (context) =>   Me4()),
                    );}, 
                  icon: Icon(Icons.facebook),
                ),
                IconButton(
                  onPressed: () {Navigator.push(
                     context,
                      MaterialPageRoute(builder: (context) =>   Me4()),
                                    );}, 
                  icon: Icon(Icons.send),
                ),
 ],
              
            ),



              //   Center(
              //     child: Card(
              //       child: Text('marriam:',
                    
              // style: TextStyle(
              //   fontSize: 25,
              // ),
            
              // ),
                 
              //     ),
                  
              //   ),
              //   Center(
              //     child: Card(
              //       child: Text('Passionate developer adept at crafting elegant and efficient solutions to '
              //      ' complex problems. Dedicated to continuous learning and staying abreast of emerging'
              //       '.'), 
              //     ),
              //   )
            //   ],
              
            // ),

            Column(
              children: [
                Center(
                  
                      child: Card(
                        child: Text('marriam:',
                        
                  style: TextStyle(
                    fontSize: 30,
                  ),
                
                  ),
                     
                      ),
                      
                    ),
             Center(
                  child: Card(
                    child: Text('Passionate developer adept at crafting elegant and efficient solutions to '
                   ' complex problems. Dedicated to continuous learning and staying abreast of emerging'
                    '.',
                            
                  style: TextStyle(
                    fontSize: 15,
                  ),
                    ), 
                  ),
                  
                ),

          ],
            ),
              
             Image.asset('assets/'),

            Card(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Me()),
                  );
                },
                child: Text('click to get my info'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}     