import 'package:flutter/material.dart';
import 'text_box.dart'; 
import 'butto_n.dart';   
//import 'text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext 
 context) {
    return MaterialApp( 

      home: const CounterApp(),
    );
  }
}

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState(); 

}

class _CounterAppState extends State<CounterApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CounterText(counter: counter), 
            CounterButton(onPressed: incrementCounter), 
          ],
        ),
      ),
    );
  }
}

//  P R A C T I C E --- IGNORE


// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext 
//  context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const 
//  MyHomePage(title: 'MY NAMR IS MARRIAM'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});


//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar( 

//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[ 

//             const Text(
//               'DO IT:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add), 

//       ),
//     );
//   }
// }

// // import 'package:flutter/material.dart';
// // import 'package:flutter_application_1/currency_converter.dart';
// // void main() {
// //   runApp(
// //     const MyApp()
// //   );
// // }
// // class MyApp extends StatelessWidget{
// //   const MyApp ({super.key});
// //   @override
// //   Widget build(BuildContext context) {
// //   return 
// //   const MaterialApp(
// // home: CurrencyConverterMaterialPage()
// //   );
// //   }
// // }