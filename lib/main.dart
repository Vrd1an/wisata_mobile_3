import 'package:aslab_travel/latihanmodul/Pertemuan4.dart';
import 'package:aslab_travel/latihanmodul/Pertemuan5.dart';
import 'package:aslab_travel/model/landing_model.dart';
import 'package:aslab_travel/project/screens/landing_page.dart';
import 'package:aslab_travel/project/screens/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TravelApp());
}

class TravelApp extends StatelessWidget {
  const TravelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPageOne(),
    );
  }
}
