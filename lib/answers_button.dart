import 'package:flutter/material.dart';

class answersbutton extends StatelessWidget {
  const answersbutton({super.key,required this.answersText,required this.onTap});
  final String answersText;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 40),
          backgroundColor:const Color.fromARGB(255, 11, 3, 73),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
        ),
        child: Text(answersText,textAlign: TextAlign.center,));
  }
}
