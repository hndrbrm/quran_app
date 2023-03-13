// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'visibility.dart';

export '../preferences.dart';
export 'visibility.dart';

abstract class TransliterationPersistent {
  FutureOr<bool> loadTransliterationVisibility();

  FutureOr<void> saveTransliterationVisibility(bool value);
}

mixin TransliterationPreferences
  on Preferences, VisibilityByKeyPreferences
  implements TransliterationPersistent
{
  static const String _key = 'transliteration_visibility';

  @override
  Future<bool> loadTransliterationVisibility() async =>
    await loadVisibilityByKey(_key) ?? true;

  @override
  Future<void> saveTransliterationVisibility(bool value) =>
    saveVisibilityByKey(_key, value);
}
