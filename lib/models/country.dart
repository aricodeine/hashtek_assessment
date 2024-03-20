// ignore_for_file: public_member_api_docs, sort_constructors_first
class Country {
  final String countryCode;
  final String countryName;
  bool isSelected;

  Country({this.isSelected = false, required this.countryCode, required this.countryName});

  @override
  String toString() =>
      'Country(countryCode: $countryCode, countryName: $countryName, isSelected: $isSelected)';
}
