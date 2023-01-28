// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import '../preferences.dart';

export '../preferences.dart';

abstract class TransliterationSizePersistent {
  FutureOr<double?> loadTransliterationSize();

  FutureOr<void> saveTransliterationSize(double value);
}

mixin TransliterationSizePreferences
  on Preferences
implements TransliterationSizePersistent
{
  static const String _key = 'transliteration_size';

  @override
  Future<double?> loadTransliterationSize() => loadDouble(_key);

  @override
  Future<void> saveTransliterationSize(double value) => saveDouble(_key, value);
}
