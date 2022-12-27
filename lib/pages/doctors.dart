// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Doctors extends StatelessWidget {
  const Doctors({super.key});

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
              margin: EdgeInsets.only(top: 18, right: 24, left: 24, bottom: 20),
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
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                          color: Colors.indigo.shade50,
                          margin: EdgeInsets.all(10),
                          //color: Color.fromARGB(255, 240, 238, 238),
                          height: 80,
                          child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24)),
                              side: BorderSide(
                                color: Colors.transparent,
                              ),
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {},
                            child: ListTile(
                              title: Text("محمد أحمد الشهاري",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 128, 128, 128),
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("أخصائي نساء وولادة"),
                              leading: CircleAvatar(
                                  backgroundImage:
                                      AssetImage("assets/icons/docimage.png")),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.call),
                              ),
                            ),
                          ));
                    }),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
