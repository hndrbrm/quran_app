// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart' hide ThemeMode;

import 'data/theme/photon_mode_scope.dart';

class QuranTheme {
  static const String fontFamily = 'Quran';
  static const MaterialColor primarySwatch = Colors.amber;
  static const PhotonMode photonMode = PhotonMode.automatic;
}

class QuranThemeData {
  static ThemeData light() => ThemeData.light().applyBase();

  static ThemeData dark() => ThemeData.dark().applyBase();
}

extension _ThemeDataExtension on ThemeData {
  ThemeData applyBase() {
    return copyWith(
      textTheme: textTheme.apply(
        fontFamily: QuranTheme.fontFamily,
      ),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: QuranTheme.primarySwatch,
      ),
    );
  }
}
