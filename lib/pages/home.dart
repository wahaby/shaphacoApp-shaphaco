// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// ignore: import_of_legacy_library_into_null_safe
//import 'package:carousel_pro/carousel_pro.dart';
//import 'dart:js_util';

//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

//import 'package:carousel_pro/carousel_pro.dart';

final List<String> imgList = [
      'assets/icons/100.jpg',
      'assets/icons/101.jpg',
      'assets/icons/102.jpg',
      'assets/icons/106.jpg',
      'assets/icons/107.jpg',
      'assets/icons/108.jpg',
      'assets/icons/110.jpg'
];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          //margin: EdgeInsets.only(top: 18, left: 24, right: 24),
          //height: double.infinity,
          width: double.infinity,
          //color: Colors.indigo.shade50,
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 30,
                margin: EdgeInsets.only(top: 18, right: 24, left: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
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
                margin: EdgeInsets.only(bottom: 10, top: 5),
                width: double.infinity,
                child: Image.asset(
                  "assets/icons/shaphaco.png",
                ),
              ),
              Container(
                //margin: EdgeInsets.symmetric(vertical: 16.0),
                width: double.infinity,
                height: 130,
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
                height: 10,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 1,
                        crossAxisSpacing: 1,
                        childAspectRatio: 1.3),
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
                                right: 10, left: 20, top: 10, bottom: 10),
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
                                Navigator.pushNamed(context, "/products");
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/drugs1.png",
                                        height: 50,
                                      ),
                                      //Spacer(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Product",
                                        style: TextStyle(
                                            fontSize: 16,
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
                                right: 20, top: 10, bottom: 10, left: 10),
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
                                Navigator.pushNamed(context, "/doctors");
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/doctors.png",
                                        height: 50,
                                      ),
                                      //Spacer(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Doctors",
                                        style: TextStyle(
                                            fontSize: 16,
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
                                right: 10, left: 20, top: 10, bottom: 10),
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/events.png",
                                        height: 50,
                                      ),
                                      //Spacer(),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Events",
                                        style: TextStyle(
                                            fontSize: 16,
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
                                right: 20, top: 10, bottom: 10, left: 10),
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
                                Navigator.pushNamed(context, "/about");
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                // ignore: sort_child_properties_last
                                child: Column(children: [
                                  Image.asset(
                                    "assets/icons/drugs1.png",
                                    height: 50,
                                  ),
                                  //Spacer(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "About Us",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
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
                                //borderRadius: BorderRadius.circular(10),
                                //color: Color.fromARGB(169, 209, 209, 209),
                                ),
                            //margin: EdgeInsets.all(5),
                            //height: 100,
                            //color: Color.fromARGB(101, 114, 180, 255),
                            padding: EdgeInsets.only(
                                right: 10, left: 20, top: 10, bottom: 10),
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
                                Navigator.pushNamed(context, "/contactus");
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                // ignore: sort_child_properties_last
                                child: Column(children: [
                                  Image.asset(
                                    "assets/icons/drugs1.png",
                                    height: 50,
                                  ),
                                  //Spacer(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "Contact Us",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
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
                                //borderRadius: BorderRadius.circular(10),
                                //color: Color.fromARGB(169, 209, 209, 209),
                                ),
                            //margin: EdgeInsets.all(5),
                            //height: 100,
                            //color: Color.fromARGB(101, 114, 180, 255),
                            padding: EdgeInsets.only(
                                right: 20, top: 10, bottom: 10, left: 10),
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
                                Navigator.pushNamed(context, "/insertforms");
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(10),
                                // ignore: sort_child_properties_last
                                child: Column(children: [
                                  Image.asset(
                                    "assets/icons/drugs1.png",
                                    height: 50,
                                  ),
                                  //Spacer(),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "App forms",
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  )
                                ], mainAxisAlignment: MainAxisAlignment.center),
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
      ),
    );
  }
}
