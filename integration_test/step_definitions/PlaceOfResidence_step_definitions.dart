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
];