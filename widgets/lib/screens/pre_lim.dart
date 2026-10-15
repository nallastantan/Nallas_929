import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:widgets/main.dart';

class Prelimscreen extends StatefulWidget {
  const Prelimscreen({super.key});

  @override
  State<Prelimscreen> createState() => _PrelimscreenState();
}

class _PrelimscreenState extends State<Prelimscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Prelim Exam", style: TextStyle(color: Colors.blue, fontSize: 16 )),
          SizedBox(height: 50),
          Text('Nathaniel gene C. Nallas'),
          SizedBox(height: 40),

          Column( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,

                child: Center(child: Text('Box 1', style: TextStyle(color: const Color.fromARGB(255, 13, 17, 20), fontSize: 14)))
                ),
                SizedBox(height: 30)
            ],
          ),

          
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Center(child: Text('Box 2', style: TextStyle(color: Colors.black, fontSize: 14 )))
            ),
          SizedBox(width: 50),
          

              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Center(child: Text('Box 3', style: TextStyle(color: Colors.black, fontSize: 14))),
                
              ), 
          SizedBox(width: 0)
            ],
          ),      
        ],
      ),
    );
  }
}