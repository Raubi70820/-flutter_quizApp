import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen( this.StartTest, {super.key});

  final void Function() StartTest;

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/flutter logo.png',width: 300,),
        const SizedBox(height: 30,),
        Text('flutter learn fun way',style: TextStyle(color: Colors.white,fontSize: 24),),
        SizedBox(height: 30,),
        OutlinedButton.icon(style: OutlinedButton.styleFrom(foregroundColor: Colors.white),

          onPressed: StartTest,
          icon: Icon(Icons.arrow_right_alt),
           label: Text("Start-Test"))
        
      ],
    ));
  }
}
