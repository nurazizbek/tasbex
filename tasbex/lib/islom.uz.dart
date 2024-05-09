import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tasbex/Masjid.dart';
import 'package:tasbex/Qibla.dart';
import 'package:tasbex/TAQVIM.dart';
import 'package:tasbex/home_page.dart';

class Islomuz extends StatelessWidget {
  const Islomuz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Islom.uz ilovasi"),
      ),
      body:
      
       SingleChildScrollView(
        scrollDirection: Axis.horizontal,
         child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 15,),SizedBox(height: 15,),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder:( context)=>Homepage())),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(120))),
                              child: Image(
                                image: NetworkImage(
                                    "https://th.bing.com/th/id/OIP.qvus8ImVRi-Ll0BLkZyCqQHaFa?rs=1&pid=ImgDetMain"),fit: BoxFit.fill,
                              ),
                            ),
                          ), Text("Tasbex",style: TextStyle(fontSize:13, fontWeight: FontWeight.w600 ),),
                        ],
                      ),
                             
                           
                    SizedBox(width: 15,),
                  Column(
                    children: [
                      Column(
                        children: [
                          InkWell(
                            onTap: () => Navigator.push(context,MaterialPageRoute(builder:( context)=>Masjid())),
                            child: Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(120))),
                              child: Image(
                                image: NetworkImage(
                                    "https://png.pngtree.com/png-vector/20190710/ourlarge/pngtree-islamic-masjid-vector-png-image_1541712.jpg"),fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ), Text("MASAJID",style: TextStyle(fontSize:13, fontWeight: FontWeight.w600 ),),
                    ],
                  ),
                              
                    SizedBox(width: 15,),
                  Column(
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context,MaterialPageRoute(builder:( context)=>Qibla())),
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(120))),
                          child: Image(
                            image: NetworkImage(
                               "https://th.bing.com/th/id/OIP.77OfQkFKEmGDcxK1xqMeuwHaH0?w=175&h=185&c=7&r=0&o=5&pid=1.7"),fit: BoxFit.fill,
                          ),
                        ),
                      ), Text("QIBLA",style: TextStyle(fontSize:13, fontWeight: FontWeight.w600 ),),
                    ],
                  ), 
                                
                    SizedBox(width: 15,),
                  Column(
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context,MaterialPageRoute(builder:( context)=>TAQVIM())),
                        child: Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(120))),
                          child: Image(
                            image: NetworkImage(
                                "https://th.bing.com/th/id/OIP.3lS1qulBqPgg8Ca__i8p9AHaGc?w=225&h=197&c=7&r=0&o=5&pid=1.7"),fit: BoxFit.fill,
                          ),
                        ),
                      ), Text("TAQVIM",style: TextStyle(fontSize:13, fontWeight: FontWeight.w600 ),),
                    ],
                  ),
                            
                           
                                 ]),
                ) ],
               ),
       ) ,
      );
  }
}