import 'package:flutter/material.dart';

class Qibla extends StatelessWidget {
  const Qibla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Container(width: 335,height: 335,child: Image(image: NetworkImage("https://th.bing.com/th/id/OIP.77OfQkFKEmGDcxK1xqMeuwHaH0?w=175&h=185&c=7&r=0&o=5&pid=1.7"),fit: BoxFit.fill,),),
      Text("Qibla",style: TextStyle(fontSize:15, fontWeight: FontWeight.w900 ),)
      ],),
    );
    
  }
}