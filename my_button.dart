import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String text;

  const MyButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        
        child: Container(
         
          decoration: BoxDecoration(
            color: const Color.fromARGB(26, 102, 38, 205),
            
          ),
          child: Center(
            child: Text(
              text,
            ),
          ),
        ),
      ),
    );
  }
}