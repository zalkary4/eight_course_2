import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:piano_play/app/app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  /// orian phone
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}
