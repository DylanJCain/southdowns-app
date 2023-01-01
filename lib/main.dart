import 'package:flutter/material.dart';
import 'package:southdowns/about.dart';
import 'package:southdowns/contact.dart';
import 'package:southdowns/finishingtouches.dart';
import 'package:southdowns/gallery.dart';
import 'package:southdowns/homescreen.dart';
import 'package:southdowns/prices.dart';
import 'package:southdowns/rooms.dart';

void main() => runApp(MaterialApp(
      //home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const HomeScreen(),
        '/rooms': (context) => const Rooms(),
        '/about': (context) => const About(),
        '/contact': (context) => const Contact(),
        '/finishingtouches': (context) => const FinishingTouches(),
        '/prices': (context) => const Prices(),
        '/gallery': (context) => Gallery()
      },
    ));
