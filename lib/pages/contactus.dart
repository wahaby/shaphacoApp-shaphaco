// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Contacts extends StatelessWidget {
  const Contacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: SafeArea(
        child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("CONTACT US", style: TextStyle(fontSize: 33)),
                SizedBox(
                  height: 33,
                ),
                Column(
                  children: [
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.maps_home_work),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Address:: Attan - Sana'a - Yemen",
                          style: TextStyle(fontSize: 20),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.phone),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Phone:: 00(967)01-200620",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(Icons.email),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Email:: info@shaphaco.net",
                          style: TextStyle(fontSize: 22),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 44,
                ),
                Text(
                  "FOLLO US ",
                  style: TextStyle(fontSize: 33),
                ),
                SizedBox(
                  height: 33,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: SvgPicture.asset("assets/icons/twitter.svg",
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        color: Colors.blue[600],
                        height: 27,
                      ),
                    ),
                    SizedBox(
                      width: 22,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      child: SvgPicture.asset(
                        "assets/icons/google-plus.svg",
                        color: Colors.red[200],
                        height: 27,
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
