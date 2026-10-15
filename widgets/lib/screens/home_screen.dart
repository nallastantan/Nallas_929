import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widgets/main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Introduction to Pharmacy", style: TextStyle(color: Colors.purple, fontSize: 16)),
          SizedBox(height: 10,),
          Text("Hipocrates, Father of medicine"),
          Text("Dioscorides, father of Pharmacy"),
          Text("Reviewer for 1st semester Pre-Lim exams"),
          SizedBox(height: 30,),


          Row(
            children: [
              Text("Module 1 - 3 Discussion"),
              SizedBox(width: 90,),
              Text("Pharmacopeia 1920"),
              SizedBox(width: 90,),
              Text("Pharmacognosy"),
              SizedBox(width: 90,),
              Text("United states Pharmacopeia"),
              SizedBox(width: 60,)
            ],
          ),

          Container(
            height: 300,
            width: 6 * 70,
            color: CupertinoColors.systemPurple,

            child: Center(child: Text("Introduction to Pharmacy", style: TextStyle(color: Colors.yellow, fontSize: 20))),
            
          )





        ],
      ),
    );
  }
}