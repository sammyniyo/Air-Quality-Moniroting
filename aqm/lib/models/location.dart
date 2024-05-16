class Location {
  bool isSelected = false; // Initialize isSelected here
  final String city;
  final String region;
  final bool isDefault;

  Location(this.city, this.region, this.isDefault);

  static List<Location> locationList = [
    Location('Kigali', 'Biryogo Free Zone', true),
    Location('Kigali', 'Kanombe', false),
    Location('Kigali', 'Masaka', false),
    Location('Kigali', 'Kanombe', false),
    Location('Kigali', 'Rwandex', false),
  ];
  static List<Location> getSelectedLocation() {
    List<Location> selectedLocation = Location.locationList;
    return selectedLocation.where((city) => city.isSelected == true).toList();
  }
}
