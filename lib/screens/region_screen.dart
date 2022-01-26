// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:countries/elements/custom_slider_navigation.dart';
import 'package:countries/screens/country_screen.dart';
import 'package:countries/widgets/region_screen_body.dart';
import 'package:countries/widgets/region_screen_header.dart';
import 'package:flutter/material.dart';

var regionName = [
  "Africa",
  "Antarctica",
  "Asia",
  "Europe",
  "North America",
  "Oceania",
  "South America",
];

var regionColors = [
  Colors.orange,
  Colors.cyan,
  Colors.yellow,
  Colors.blue,
  Colors.green,
  Colors.red,
  Colors.purple,
];

class RegionScreen extends StatefulWidget {
  const RegionScreen({Key? key}) : super(key: key);

  @override
  _RegionScreenState createState() => _RegionScreenState();
}

class _RegionScreenState extends State<RegionScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColorLight,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 32.0, left: 30.0, right: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RegionScreenHeader(),
              RegionScreenBody(),
            ],
          ),
        ),
      ),
    );
  }
}
