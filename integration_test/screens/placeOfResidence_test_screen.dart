import 'package:flutter_test/flutter_test.dart';
import 'package:profile/assets/strings/place_residence_screen_strings.dart';
import 'package:profile/features/profile/screens/place_residence/place_residence_screen.dart';

import '../test_screen_library.dart';

class PlaceOfResidence {
  /// Экран.
   final Finder trait = find.byType(PlaceResidenceScreen);

  /// Поле ввода города
  Finder city =
      generalTestScreen.textFormFieldWidget(PlaceResidenceScreenStrings.placeResidenceTitle);
}