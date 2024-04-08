import 'package:flutter/material.dart';

class problemsummary extends StatelessWidget {
  const problemsummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: 
            summaryData.map((data) {
              return Row(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(radius: 20,
                    child: Text(((data['problem_index']as int)+1).toString()),backgroundColor: Color.fromARGB(255, 196, 98, 114),),
                    SizedBox(width: 10,),
                  Expanded(
                    child: Column(
                      children: [
                        Text(data['problem']as String,style: TextStyle(color: Colors.white,fontSize: 15),),
                        SizedBox(height: 5,),
                        Text(data['user_answer']as String,style: TextStyle(color: Colors.black),),
                        Text(data['correct_answer']as String,style: TextStyle(color: Colors.green),),
                      ],
                    ),
                  )
                ],
              );
            }).toList(),
          
        ),
      ),
    );
  }
}
