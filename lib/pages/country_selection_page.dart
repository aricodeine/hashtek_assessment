import 'package:country_icons/country_icons.dart';
import 'package:flutter/material.dart';
import 'package:hashtek_assessment/constants.dart';
import 'package:hashtek_assessment/services/country_selection_service.dart';
import 'package:hashtek_assessment/widgets/custom_radio_list_tile.dart';

class CountrySelectionPage extends StatefulWidget {
  const CountrySelectionPage({super.key});

  @override
  State<CountrySelectionPage> createState() => _CountrySelectionPageState();
}

class _CountrySelectionPageState extends State<CountrySelectionPage> {
  int? currentIndex;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Country Selection'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          style: IconButton.styleFrom(
            backgroundColor: kPrimaryColor,
            iconSize: size.height * 0.02,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final country = CountrySelectionService.countryList[index];
          return CustomRadioListTile(
              currentValue: currentIndex,
              country: country,
              index: index,
              title: Row(
                children: [
                  SizedBox(
                      height: size.height * 0.02,
                      width: size.width * 0.1,
                      child: CountryIcons.getSvgFlag(country.countryCode)),
                  Text(
                    country.countryName,
                  )
                ],
              ),
              onChanged: (val) => setState(() {
                    // print('Selected: $val');
                    currentIndex = val ?? 0;
                    CountrySelectionService.selectCountry(currentIndex!);
                  }));
        },
        itemCount: CountrySelectionService.countryList.length,
      ),
    );
  }
}
