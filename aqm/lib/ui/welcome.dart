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
            height: size.height * 0.08,
            decoration: BoxDecoration(
              border: cities[index].isSelected
                  ? Border.all(
                      color: myConstants.secondaryColor.withOpacity(.6),
                      width: 2,
                    )
                  : Border.all(color: Colors.white),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: myConstants.primaryColor.withOpacity(.2),
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      cities[index].isSelected = !cities[index].isSelected;
                    });
                  },
                  child: Image.asset(
                    cities[index].isSelected
                        ? 'assets/checked.png'
                        : 'assets/unchecked.png',
                    width: 30,
                  ),
                ),
                const SizedBox(width: 10),
                Text(
                  cities[index].region,
                  style: TextStyle(
                    fontSize: 16,
                    color: cities[index].isSelected
                        ? myConstants.primaryColor
                        : Colors.black54,
                  ),
                )
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        // Add button here
        backgroundColor: myConstants.secondaryColor,
        child: const Icon(Icons.pin_drop),
        onPressed: () {
          print('Pressed');
        },
      ),
    );
  }
}
