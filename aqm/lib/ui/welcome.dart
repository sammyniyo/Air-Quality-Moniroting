import 'package:aqm/models/constant.dart';
import 'package:flutter/material.dart';
import 'package:aqm/models/location.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    List<Location> cities =
        Location.locationList.where((city) => city.isDefault == false).toList();
    List<Location> selectedLocation = Location.getSelectedLocation();

    Constants myConstants = Constants();
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: myConstants.secondaryColor,
        title: Text(selectedLocation.length.toString() + ' Selected'),
      ),
      body: ListView.builder(
          itemCount: cities.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.only(left: 10, top: 10, right: 10),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: size.height,
              width: size.width,
            );
          }),
    );
  }
}
