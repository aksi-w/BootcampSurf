import 'package:flutter_test/flutter_test.dart';
import 'package:profile/assets/strings/test_keys.dart';
import 'package:profile/features/profile/screens/place_residence/place_residence_screen.dart';


class PlaceOfResidenceScreen {
   /// Экран.
   final Finder trait = find.byType(PlaceResidenceScreen);

   /// Поле ввода города
   final Finder placeField = find.byKey(TestKeys.placeOfResidenceField);
}