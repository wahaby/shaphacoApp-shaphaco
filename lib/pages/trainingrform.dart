// ignore_for_file: prefer_const_constructors
// Visi Form For Training Request Form
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class TrainingForm extends StatelessWidget {
  final TextEditingController name = TextEditingController();
  final TextEditingController collage = TextEditingController();
  final TextEditingController department = TextEditingController();
  final TextEditingController level = TextEditingController();
  final TextEditingController total = TextEditingController();
  final TextEditingController requesterName = TextEditingController();
  final TextEditingController requesterPhone = TextEditingController();

  TrainingForm({super.key});

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
                  child: SingleChildScrollView(
                    //padding: EdgeInsets.all(10),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: 300,
                          height: 50,
                          child: TextFormField(
                            controller: name,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "اسم الجامعة",
                              hintStyle:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: 300,
                          height: 50,
                          child: TextFormField(
                            controller: collage,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "الكلية",
                              hintStyle:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: 300,
                          height: 50,
                          child: TextFormField(
                            controller: department,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "القسم",
                              hintStyle:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: 300,
                          height: 50,
                          child: TextFormField(
                            controller: level,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "المستوى",
                              hintStyle:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: 300,
                          height: 50,
                          child: TextFormField(
                            controller: total,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "عدد الطلاب",
                              hintStyle:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: 300,
                          height: 50,
                          child: TextFormField(
                            controller: requesterName,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "اسم مقدم الطلب",
                              hintStyle:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 15),
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: 300,
                          height: 50,
                          child: TextFormField(
                            controller: requesterPhone,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "رقم الجوال",
                              hintStyle:
                                  TextStyle(fontSize: 17, color: Colors.grey),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Map<String, dynamic> data = {
                              "name": name.text,
                              "collage": collage.text,
                              "department": department.text,
                              "level": level.text,
                              "total": total.text,
                              "requesterName": requesterName.text,
                              "requesterPhone": requesterPhone.text,
                              "date": DateTime.now(),
                            };
                            FirebaseFirestore.instance
                                .collection("univVISIT")
                                .add(data);
                          },
                          child: Text(
                            "ارسـال",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                              padding: MaterialStateProperty.all(
                                  EdgeInsets.symmetric(horizontal: 50)),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(15)))),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
