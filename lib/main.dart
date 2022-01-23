import 'package:flutter/material.dart';
import 'package:health/SignUp.dart';
import 'package:health/home.dart';
import 'package:health/model/list2.dart';
import 'package:health/start.dart';
import 'package:health/welcome.dart';
import 'package:health/choose.dart';
import 'package:health/logo.dart';
import 'package:health/SignIn.dart';
import 'package:health/grid.dart';
import 'package:health/model/list.dart';

void main() => runApp(
      MaterialApp(
          theme: ThemeData(
           accentColor: Colors.amber,
           primaryColor: Colors.black,
            brightness: Brightness.dark,
         ),
           debugShowCheckedModeBanner: false,
        routes: {
        '/home': (context) => const home(),
          '/start': (context) => const start(),
          '/welcome': (context) => const welcome(),
          '/choose': (context) => const choose(),
          '/signup': (context) => const SignUp(),
          '/': (context) => const Logo(),
          '/signin': (context) => const SignIn(),
          '/grid': (context) =>  grid(),
          '/list2': (context) => List2(),
      }
    ),
);
