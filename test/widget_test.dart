import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hashtek_assessment/pages/country_selection_page.dart';
import 'package:hashtek_assessment/pages/profile_page.dart';
import 'package:hashtek_assessment/services/country_selection_service.dart';

void main() {
  testWidgets('Test Country Selection Button', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ProfilePage()));

    final elevatedButtonFinder = find.byKey(const Key('countryButton'));
    expect(elevatedButtonFinder, findsOneWidget);

    debugPrint(elevatedButtonFinder.toString());

    await tester.tap(elevatedButtonFinder);
    await tester.pumpAndSettle();

    // verifying that CountrySelectionPage is navigated to
    expect(find.byType(CountrySelectionPage), findsOneWidget);

    debugPrint('Before selecting: ${CountrySelectionService.selectedCountry.toString()}');

    // simultaing selection of  a country (lets assume country with code 'US' is selected)
    await tester.tap(find.byWidgetPredicate(
      (widget) => widget is RadioListTile && widget.value == 0,
    ));

    expect(CountrySelectionService.selectedCountry, CountrySelectionService.countryList[0]);
    debugPrint('After selecting: ${CountrySelectionService.selectedCountry.toString()}');
  });
}
