// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'visibility.dart';

export '../preferences.dart';
export 'visibility.dart';

abstract class TranslationPersistent {
  FutureOr<bool> loadTranslationVisibility();

  FutureOr<void> saveTranslationVisibility(bool value);
}

mixin TranslationPreferences
  on Preferences, VisibilityByKeyPreferences
  implements TranslationPersistent
{
  static const String _key = 'translation_visibility';

  @override
  Future<bool> loadTranslationVisibility() async =>
    await loadVisibilityByKey(_key) ?? true;

  @override
  Future<void> saveTranslationVisibility(bool value) =>
    saveVisibilityByKey(_key, value);
}
