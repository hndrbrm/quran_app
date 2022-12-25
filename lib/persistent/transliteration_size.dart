// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

abstract class TransliterationSizePersistent {
  FutureOr<double?> loadTransliterationSize();

  FutureOr<void> saveTransliterationSize(double? value);
}

mixin TransliterationSizePreferences implements TransliterationSizePersistent {
  static const String key = 'transliteration_size';

  @override
  Future<double?> loadTransliterationSize() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getDouble(key);
  }

  @override
  FutureOr<void> saveTransliterationSize(double? value) {
    if (value != null) {
      return SharedPreferences.getInstance().then(
        (SharedPreferences sp) => sp.setDouble(key, value),
      );
    }
  }
}
