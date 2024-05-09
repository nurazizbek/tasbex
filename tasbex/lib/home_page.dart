import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int zikrsoni = 0;
  String zikrnomi = 'SubxonOlloh';
  Color rang = Colors.yellow;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Islom.uz"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: rang,
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Text(
                    zikrnomi,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 40,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height:75,
                  ),
                  Text(zikrsoni.toString(),
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 40,
                          fontWeight: FontWeight.w700)),
                  Container(
                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(220)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://th.bing.com/th/id/OIP.WppZal5tzM_9g656M8VmxAAAAA?w=474&h=474&rs=1&pid=ImgDetMain"),
                            fit: BoxFit.fill)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 250, left: 220),
                    child: FloatingActionButton(onPressed: () async {
                      Zikrmano();
                      if (zikrsoni == 34) {
                        zikrsozi("Alhamduliloh");
                        rang = Colors.blue.shade300;
                      } else if (zikrsoni == 67) {
                        zikrsozi("Allohu Akbar");
                        rang = Colors.yellow.shade200;
                      } else if (zikrsoni == 100) {
                        zikrsozi("Olloh qabul qilisin");
                        await Future.delayed(Duration(seconds: 5));
                        qaytaboshlash();
                      }
                    }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void Zikrmano() {
    zikrsoni++;
    setState(() {});
  }

  void zikrsozi(String YangiZikr) {
    zikrnomi = YangiZikr;
    rang = Colors.white;
    setState(() {});
  }

  void qaytaboshlash() {
    zikrsoni = 0;
    zikrsozi("SubxonOlloh");
    rang = Colors.yellow;
  }
}
