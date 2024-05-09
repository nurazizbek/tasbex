import 'package:flutter/material.dart';

class Masjid extends StatelessWidget {
  const Masjid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Container(width: 335,height: 335,child: Image(image: NetworkImage("data:image/jpeg;base64,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"),fit: BoxFit.fill,),),
      Text("Oq Masjid",style: TextStyle(fontSize:15, fontWeight: FontWeight.w900 ),)
      ],),
    );
  }
}