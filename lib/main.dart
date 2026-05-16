// ignore_for_file: always_put_control_body_on_new_line

import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

import 'constants/strings.dart';
import 'flavors/app_flavor.dart';
import 'my_app.dart';

/// Try using const constructors as much as possible!

Future<void> main() async {
  FlavorConfig.setFlavor(AppFlavor.prod);
  await bootstrap();
}

Future<void> bootstrap() async {
  /// Initialize packages
  WidgetsFlutterBinding.ensureInitialized();
  await setPreferredOrientations();
  if (!kIsWeb) {
    if (Platform.isAndroid) {
      await FlutterDisplayMode.setHighRefreshRate();
    }
  }

  if (kReleaseMode) {
    /// Disable debugPrint in release mode
    /// This will prevent any debugPrint statements from being executed
    /// and will not print anything to the console.
    /// You can also use a custom implementation if needed
    debugPrint = (String? message, {int? wrapWidth}) {};
  }

  runApp(
    const ProviderScope(
      child: MyApp()
    ),
  );

  /// Add this line to get the error stack trace in release mode
  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };
}
