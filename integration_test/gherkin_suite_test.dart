import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gherkin/gherkin.dart';
import 'package:profile/runner.dart' as app;
import 'package:surf_flutter_test/surf_flutter_test.dart';
import 'package:surf_logger/surf_logger.dart';

import 'step_definitions/interests_step_definitions.dart';
import 'step_definitions/main_step_definitions.dart';
import 'step_definitions/personal_data_step_definitions.dart';
import 'test_screen_library.dart';
import 'step_definitions/PlaceOfResidence_step_definitions.dart';

part 'gherkin_suite_test.g.dart';

@GherkinTestSuite()
void main() {
  executeTestSuite(
    configuration: FlutterTestConfiguration(
      featureDefaultLanguage: 'ru',
      order: ExecutionOrder.alphabetical,
      defaultTimeout: const Duration(minutes: 5),
      hooks: [
        ConvenienceHook(),
      ],
      reporters: [
        StdoutReporter(MessageLevel.error)
          ..setWriteLineFn(Logger.d)
          ..setWriteFn(Logger.d),
        ProgressReporter()
          ..setWriteLineFn(Logger.d)
          ..setWriteFn(Logger.d),
        TestRunSummaryReporter()
          ..setWriteLineFn(Logger.d)
          ..setWriteFn(Logger.d),
        JsonReporter(writeReport: (_, __) => Future<void>.value()),
      ],
      stepDefinitions: [
        ///...aboutStepDefinitions,
        ...interestsStepDefinitions,
        ...placeOfResidenceStepDefinitions,
        ...personalDataStepDefinitions,
        ...mainStepDefinitions,


      ],
    ),
    appMainFunction: (world) => app.run(),
  );
}