import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatelessWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  Widget build(BuildContext context) {
    Padding(
            padding: EdgeInsets.all(10),
          );
          OutlinedBorder(
         borderRadius: BorderRadius.all(Radius.circular(40)),
            borderSide: BorderSide(
                 width: 2,
                 color: Colors.black38,
                         style: BorderStyle.solid,
                                           )
                                         );
  



    return Scaffold(
      backgroundColor: Colors.pink,
        borderRadius: BorderRadius.all(Radius.circular(100)),
          borderSide: BorderSide(
             style: BorderStyle.solid,
               width: 10,
                color: Colors.black38,
                    ),
    
    
    body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
       
       
       
       
        children: [
           Padding(
            padding: EdgeInsets.all(15),
          ),
          Text( '0',
            style: TextStyle(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
            
        ],
    
      ),
       

    );
final Counter extends StatefulWidget {
const Counter({super.key});

  @override

final _Counter extends State<Counter> {
  int counter = 0;
void incrementCounter() {
    setState(() 
    {
      counter++;
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Marriam1(counter: counter), 
            Button(onPressed: incrementCounter), 
          ],
        ),
      ),
    )
  }
};
  }
}
