// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import '../preferences.dart';

export '../preferences.dart';

abstract class TranslationSizePersistent {
  FutureOr<double?> loadTranslationSize();

  FutureOr<void> saveTranslationSize(double value);
}

mixin TranslationSizePreferences
  on Preferences
  implements TranslationSizePersistent
{
  static const String _key = 'translation_size';

  @override
  Future<double?> loadTranslationSize() => loadDouble(_key);

  @override
  Future<void> saveTranslationSize(double value) => saveDouble(_key, value);
}
