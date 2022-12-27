// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// ignore: import_of_legacy_library_into_null_safe
//import 'package:carousel_pro/carousel_pro.dart';
//import 'dart:js_util';

//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
//import 'package:carousel_pro/carousel_pro.dart';

final List<String> imgList = [
  'assets/icons/1.jpg',
  'assets/icons/2.jpg',
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(255, 255, 249, 244),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 70,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 16.0),
              width: double.infinity,
              height: 160,
              //color: Colors.red,
              child: CarouselSlider(
                options: CarouselOptions(
                  //height: 400.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 0.7,
                  aspectRatio: 2.0,
                  //initialPage: 2,
                ),
                items: imgList
                    .map(
                      (item) => Container(
                        //margin: EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: AssetImage(item), fit: BoxFit.cover)),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Color.fromARGB(255, 163, 163, 163),
              thickness: 1,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 15,
                      childAspectRatio: 1.7),
                  children: [
                    ClipRRect(
                      //borderRadius: BorderRadius.circular(10),
                      child: Container(
                          decoration: BoxDecoration(
                            //border: (Border.all(color: Colors.red)),
                            borderRadius: BorderRadius.circular(10),
                            //color: Color.fromARGB(169, 209, 209, 209),
                          ),
                          //margin: EdgeInsets.all(5),
                          height: 100,
                          //color: Color.fromARGB(101, 114, 180, 255),
                          padding: EdgeInsets.all(5),
                          //alignment: Alignment.center,

                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              shadowColor: Colors.red,
                              backgroundColor:
                                  Color.fromARGB(255, 255, 231, 215),
                              elevation: 10,
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
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      "assets/icons/drugs.png",
                                      height: 50,
                                      //color: Colors.indigo,
                                    ),

                                    //Spacer(),
                                    Text(
                                      "Product",
                                      style: TextStyle(
                                          fontSize: 20, color: Colors.black),
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
                            borderRadius: BorderRadius.circular(10),
                            //color: Color.fromARGB(169, 209, 209, 209),
                          ),
                          //margin: EdgeInsets.all(5),
                          height: 100,
                          //color: Color.fromARGB(101, 114, 180, 255),
                          padding: EdgeInsets.all(5),
                          //alignment: Alignment.center,

                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              shadowColor: Colors.red,
                              backgroundColor:
                                  Color.fromARGB(255, 255, 231, 215),
                              elevation: 10,
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "/products");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Image.asset(
                                  "assets/icons/drugs.png",
                                  height: 50,
                                ),
                                Spacer(),
                                Text(
                                  "Doctors",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )
                              ], mainAxisAlignment: MainAxisAlignment.center),
                            ),
                          )),
                    ),
                    ClipRRect(
                      //borderRadius: BorderRadius.circular(10),
                      child: Container(
                          decoration: BoxDecoration(
                            //border: (Border.all(color: Colors.red)),
                            borderRadius: BorderRadius.circular(10),
                            //color: Color.fromARGB(169, 209, 209, 209),
                          ),
                          //margin: EdgeInsets.all(5),
                          height: 100,
                          //color: Color.fromARGB(101, 114, 180, 255),
                          padding: EdgeInsets.all(5),
                          //alignment: Alignment.center,

                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              shadowColor: Colors.red,
                              backgroundColor:
                                  Color.fromARGB(255, 255, 231, 215),
                              elevation: 10,
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "/products");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Image.asset(
                                  "assets/icons/drugs.png",
                                  height: 50,
                                ),
                                Spacer(),
                                Text(
                                  "Events",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )
                              ], mainAxisAlignment: MainAxisAlignment.center),
                            ),
                          )),
                    ),
                    ClipRRect(
                      //borderRadius: BorderRadius.circular(10),
                      child: Container(
                          decoration: BoxDecoration(
                            //border: (Border.all(color: Colors.red)),
                            borderRadius: BorderRadius.circular(10),
                            //color: Color.fromARGB(169, 209, 209, 209),
                          ),
                          //margin: EdgeInsets.all(5),
                          height: 100,
                          //color: Color.fromARGB(101, 114, 180, 255),
                          padding: EdgeInsets.all(5),
                          //alignment: Alignment.center,

                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              foregroundColor: Colors.white,
                              shadowColor: Colors.red,
                              backgroundColor:
                                  Color.fromARGB(255, 255, 231, 215),
                              elevation: 10,
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, "/products");
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(children: [
                                Image.asset(
                                  "assets/icons/drugs.png",
                                  height: 50,
                                ),
                                Spacer(),
                                Text(
                                  "About Us",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                )
                              ], mainAxisAlignment: MainAxisAlignment.center),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Container(
                height: 100,
                width: double.infinity,
                color: Color.fromARGB(255, 104, 104, 104),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/about");
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          27,
                        )),
                      ),
                    ),
                    child: Text("About Us",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 179, 179, 179))),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/about");
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          27,
                        )),
                      ),
                    ),
                    child: Text("Contact Us",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 179, 179, 179))),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/about");
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          27,
                        )),
                      ),
                    ),
                    child: Text("Employement",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 179, 179, 179))),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
