import 'package:flutter/material.dart';

class TAQVIM extends StatelessWidget {
  const TAQVIM({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Container(width: 335,height: 335,child: Image(image: NetworkImage("data:image/jpeg;base64,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"),fit: BoxFit.fill,),),
      Text("Taqvim",style: TextStyle(fontSize:15, fontWeight: FontWeight.w900 ),)
      ],),
    );
  }
}