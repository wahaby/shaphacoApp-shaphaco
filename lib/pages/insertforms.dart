// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AppForms extends StatelessWidget {
  const AppForms({super.key});

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
                Expanded(
                  child: Container(
                    //color: Colors.amber,
                    padding: EdgeInsets.all(10),
                    //margin: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              //padding: EdgeInsets.all(20),
                              //foregroundColor: Colors.white,
                              //shadowColor: Color.fromARGB(255, 56, 56, 56),
                              backgroundColor:
                                  Color.fromARGB(255, 252, 222, 222),
                              //elevation: 20,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/drugs1.png",
                                  height: 150,
                                  width: 150,
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "التوظيف",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "ادخال بيانات طلب توظيف",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              //foregroundColor: Colors.white,
                              //shadowColor: Color.fromARGB(255, 56, 56, 56),
                              backgroundColor: Colors.white,
                              //elevation: 20,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "/visittype");
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/drugs1.png",
                                  height: 150,
                                  width: 150,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "الزيارات",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "طلب زيارة علمية",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              //foregroundColor: Colors.white,
                              //shadowColor: Color.fromARGB(255, 56, 56, 56),
                              backgroundColor: Colors.white,
                              //elevation: 20,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "/trainingform");
                            },
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/icons/drugs1.png",
                                  height: 150,
                                  width: 150,
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "التدريب",
                                      style: TextStyle(
                                          fontSize: 24,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "ادخال طلب تدريب",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )
                              ],
                            )),
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
