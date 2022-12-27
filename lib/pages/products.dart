// ignore_for_file: prefer_const_constructors
//import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

class Item {
  String imgPath;

  Item({required this.imgPath});
}

class Products extends StatelessWidget {
  Products({super.key});

  final List<Item> items = [
    Item(imgPath: "assets/icons/1.jpg"),
    Item(imgPath: "assets/icons/2.jpg"),
  ];
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
          //height: double.infinity,
          width: double.infinity,
          //color: Color.fromARGB(255, 172, 217, 255),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
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
              FutureBuilder(
                future: FirebaseFirestore.instance.collection('products').get(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasError) {
                    return Text("Something went wrong");
                  }

                  if (snapshot.connectionState == ConnectionState.done) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 22),
                        child: Container(
                          //padding: EdgeInsets.symmetric(vertical: 10),
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      childAspectRatio: 2 / 2.2,
                                      crossAxisSpacing: 1,
                                      mainAxisSpacing: 1),
                              itemCount: snapshot.data!.docs.length,
                              itemBuilder: (BuildContext context, int index) {
                                return ClipRRect(
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
                                          right: 10,
                                          left: 20,
                                          top: 10,
                                          bottom: 10),
                                      //alignment: Alignment.center,

                                      child: OutlinedButton(
                                        style: OutlinedButton.styleFrom(
                                          //foregroundColor: Colors.white,
                                          //shadowColor: Colors.red,
                                          backgroundColor: Colors.white,
                                          //elevation: 1,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(24)),
                                          side: BorderSide(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: Padding(
                                          padding: const EdgeInsets.all(10),
                                          child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Image.network(
                                                  snapshot.data!.docs[index]
                                                      ["imgpath"],

                                                  height: 130,
                                                  fit: BoxFit.cover,
                                                  //"https://firebasestorage.googleapis.com/v0/b/shaphacoapp.appspot.com/o/3.jpg?alt=media&token=0c239cff-7b2b-4f68-a9bb-a3e3bd1f61df"
                                                ),
                                                //Spacer(),

                                                Text(
                                                  "Panadol",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Color.fromARGB(
                                                          255, 131, 131, 131),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  "Paracetamol 5mg",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Color.fromARGB(
                                                          255, 175, 174, 174),
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )
                                              ]),
                                        ),
                                      )),
                                );
                              }),
                        ),
                      ),
                    );
                  }

                  return Text(
                    "loading",
                    style: TextStyle(
                        fontSize: 30,
                        color: Color.fromARGB(255, 92, 91, 91),
                        fontWeight: FontWeight.bold),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
