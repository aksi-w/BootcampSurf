import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:surf_flutter_test/surf_flutter_test.dart';
import '../test_screen_library.dart';

final interestsStepDefinitions = [
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я указываю интересы$'),
        (context, tester) async {

    },
  ),
  testerWhen<FlutterWidgetTesterWorld>(
    RegExp(r'Я перехожу далее информации о себе$'),
        (context, tester) async {
      await tester.pumpUntilVisible(interestsScreen.trait);
      await tester.implicitTap(generalTestScreen.nextBtn);
      await tester.pumpUntilVisible(aboutScreen.trait);
    },
  ),
];

