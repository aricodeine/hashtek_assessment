import 'package:hashtek_assessment/models/country.dart';

class CountrySelectionService {
  static Country? selectedCountry;
  static List<Country> countryList = [
    Country(countryCode: 'US', countryName: 'USA'),
    Country(countryCode: 'FR', countryName: 'France'),
    Country(countryCode: 'IN', countryName: 'India'),
    Country(countryCode: 'DE', countryName: 'Germany'),
    Country(countryCode: 'FI', countryName: 'Finland'),
    Country(countryCode: 'HU', countryName: 'Hungary'),
    Country(countryCode: 'CM', countryName: 'Cameroon'),
  ];

  static void selectCountry(int selectedCountryIndex) {
    for (int i = 0; i < countryList.length; i++) {
      if (i != selectedCountryIndex) {
        countryList[i].isSelected = false;
      } else {
        countryList[i].isSelected = true;
      }
    }
    selectedCountry = countryList[selectedCountryIndex];
  }
}
