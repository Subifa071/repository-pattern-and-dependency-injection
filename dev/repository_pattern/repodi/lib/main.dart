import 'package:flutter/material.dart';
import 'package:repodi/di/di.dart';

import 'app.dart';

void main() {
  initModule();
  runApp(
    const App(),
  );
}
