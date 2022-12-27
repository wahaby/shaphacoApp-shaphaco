// ignore_for_file: prefer_const_constructors

//import 'dart:html';

import 'package:flutter/material.dart';

class VisitType extends StatelessWidget {
  const VisitType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo.shade50,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 30,
                  margin:
                      EdgeInsets.only(top: 18, right: 24, left: 24, bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(
                            context,
                          );
                        },
                        child: RotatedBox(
                          quarterTurns: 135,
                          child: Icon(
                            Icons.arrow_downward,
                            size: 28,
                            color: Colors.indigo,
                          ),
                        ),
                      ),
                      RotatedBox(
                        quarterTurns: 135,
                        child: Icon(
                          Icons.bar_chart_rounded,
                          size: 28,
                          color: Colors.indigo,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  child: ShaderMask(
                    shaderCallback: (rectangle) {
                      return LinearGradient(
                              colors: [Colors.black, Colors.transparent],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)
                          .createShader(Rect.fromLTRB(
                              0, 0, rectangle.width, rectangle.height));
                    },
                    blendMode: BlendMode.dstIn,
                    child: Image.asset(
                      "assets/icons/shavisits.jpg",
                      //height: 40,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    //padding: EdgeInsets.symmetric(vertical: 10),
                    child: GridView(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 1,
                          crossAxisSpacing: 1,
                          childAspectRatio: 1.2),
                      children: [
                        ClipRRect(
                          //borderRadius: BorderRadius.circular(24),
                          child: Container(
                              decoration: BoxDecoration(
                                  //border: (Border.all(color: Colors.red)),
                                  //borderRadius: BorderRadius.circular(24),
                                  //color: Color.fromARGB(169, 209, 209, 209),
                                  ),
                              //margin: EdgeInsets.all(5),
                              //height: 100,
                              //color: Color.fromARGB(101, 114, 180, 255),
                              padding: EdgeInsets.only(
                                  right: 5, left: 10, top: 5, bottom: 5),
                              //alignment: Alignment.center,

                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  //foregroundColor: Colors.white,
                                  //shadowColor: Color.fromARGB(255, 138, 189, 255),
                                  backgroundColor: Colors.white,
                                  //elevation: 1,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24)),
                                  side: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/visitform");
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/icons/drugs1.png",
                                          height: 40,
                                        ),
                                        //Spacer(),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "جامعـة",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                ),
                              )),
                        ),
                        ClipRRect(
                          //borderRadius: BorderRadius.circular(10),
                          child: Container(
                              decoration: BoxDecoration(
                                  //border: (Border.all(color: Colors.red)),
                                  //borderRadius: BorderRadius.circular(10),
                                  //color: Color.fromARGB(169, 209, 209, 209),
                                  ),
                              //margin: EdgeInsets.all(5),
                              //height: 100,
                              //color: Color.fromARGB(101, 114, 180, 255),
                              padding: EdgeInsets.only(
                                  right: 5, top: 5, bottom: 5, left: 5),
                              //alignment: Alignment.center,

                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  //foregroundColor: Colors.white,
                                  //shadowColor: Colors.red,
                                  backgroundColor: Colors.white,
                                  //elevation: 1,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24)),
                                  side: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, "/visitforminst");
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/icons/doctors.png",
                                          height: 40,
                                        ),
                                        //Spacer(),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "معهــد",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                ),
                              )),
                        ),
                        ClipRRect(
                          //borderRadius: BorderRadius.circular(10),
                          child: Container(
                              decoration: BoxDecoration(
                                  //border: (Border.all(color: Colors.red)),
                                  //borderRadius: BorderRadius.circular(10),
                                  //color: Color.fromARGB(169, 209, 209, 209),
                                  ),
                              //margin: EdgeInsets.all(5),
                              //height: 100,
                              //color: Color.fromARGB(101, 114, 180, 255),
                              padding: EdgeInsets.only(
                                  right: 10, left: 5, top: 5, bottom: 5),
                              //alignment: Alignment.center,

                              child: OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  //foregroundColor: Colors.white,
                                  //shadowColor: Colors.red,
                                  backgroundColor: Colors.white,
                                  //elevation: 1,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24)),
                                  side: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, "/products");
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "assets/icons/events.png",
                                          height: 40,
                                        ),
                                        //Spacer(),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "جهة أخرى",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ]),
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
