import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';

import '../test_screen_library.dart';


final placeOfResidenceStepDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я выбираю город$'),
        (context, tester) async{
      final placeFieldFinder = placeOfResidenceScreen.placeField;
      await tester.enterText(placeFieldFinder, 'Voronezh');
    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу далее к интересам$'),
        (context, tester) async {
      await tester.pumpUntilVisible(placeOfResidenceScreen.trait);
      await tester.implicitTap(generalTestScreen.nextBtn);
      await tester.pumpUntilVisible(interestsScreen.trait);
    },
  ),
];