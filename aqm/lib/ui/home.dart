import 'package:aqm/models/constant.dart';
import 'package:aqm/models/location.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Constants myConstants = Constants();

  int temperature = 0;
  String StationLStateName = 'Loading..';
  int carbonMonoxide = 0;
  int particleMater = 0;
  var currentDate = 'Loading..';
  String imageUrl = '';
  int woeid = 4418;
  String location = 'Biryogo';

  var selectedLocation = Location.getSelectedLocation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HomePage"),
      ),
    );
  }
}
