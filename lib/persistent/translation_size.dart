// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

abstract class TranslationSizePersistent {
  FutureOr<double?> loadTranslationSize();

  FutureOr<void> saveTranslationSize(double? value);
}

mixin TranslationSizePreferences implements TranslationSizePersistent {
  static const String key = 'translation_size';

  @override
  Future<double?> loadTranslationSize() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getDouble(key);
  }

  @override
  FutureOr<void> saveTranslationSize(double? value) {
    if (value != null) {
      return SharedPreferences.getInstance().then(
        (SharedPreferences sp) => sp.setDouble(key, value),
      );
    }
  }
}
