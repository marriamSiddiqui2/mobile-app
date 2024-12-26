
// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'page3.dart'; // Import the Skills page

class Me extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Me'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'marriamm',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                    
                  ),
                
                  Text(
                    'Software Developer',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date Of Birth',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('22-06-2004'),
                    ],
                  ),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Education',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Higher Education'),
                    ],
                  ),



                ],
              ),



                Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Skills()),
                    );
                  },
                  child: const Text('CHECK RESUME'),
                ),
              ),
              

              
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Education',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Graduation',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text('The University Of Lahore'),
                      SizedBox(height: 5),
                      Text('Bachelor of Science in Information Engineering Technology, BSIET (Continue).'),
                      SizedBox(height: 10),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Intermediate',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      Text('MTB Collage'),
                      SizedBox(height: 5),
                      Text('Fsc. Pre-engineering. (2019-2021)'),
                      SizedBox(height: 10),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Skills'),
//       ),
//       // ignore: prefer_const_constructors
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: const Column(
//           crossAxisAlignment: CrossAxisAlignment.start, // Left-align text
//           children: [
//             Text(
//               'My Skills',
//               style: TextStyle(
//                 fontSize: 20,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 15),
//             // List your skills here (e.g., Flutter, Dart, UI/UX Design)
//             Text(' - Flutter Development'),
//             Text(' - Dart Programming'),
//             Text(' - UI/UX Design'),
//             // ... (add more skills)
//           ],
//         ),
//       ),
//     );
//   }
// }
