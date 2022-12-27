// ignore_for_file: equal_keys_in_map

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shaphaco/pages/about.dart';
import 'package:shaphaco/pages/contactus.dart';
import 'package:shaphaco/pages/doctors.dart';
import 'package:shaphaco/pages/home.dart';
import 'package:shaphaco/pages/insertforms.dart';
import 'package:shaphaco/pages/trainingrform.dart';
import 'package:shaphaco/pages/visitform.dart';
import 'package:shaphaco/pages/visitforminst.dart';
import 'package:shaphaco/pages/products.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shaphaco/pages/visittype.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => const Home(),
        "/products": (context) => Products(),
        "/doctors": (context) => const Doctors(),
        "/about": (context) => const About(),
        "/insertforms": (context) => const AppForms(),
        "/visitform": (context) => VisitForm(),
        "/trainingform": (context) => TrainingForm(),
        "/visitforminst": (context) => VisitFormInst(),
        "/visittype": (context) => const VisitType(),
        "/contactus":(context) => const Contacts()
        
      },
    );
  }
}
