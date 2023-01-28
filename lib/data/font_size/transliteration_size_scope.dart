// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import '../../persistent/font_size/transliteration_size.dart';
import 'font_size_base.dart';

class TransliterationSizeScope
  extends FontSizeScopeBase
  with Preferences, TransliterationSizePreferences
{
  TransliterationSizeScope({
    super.key,
    required super.child,
  });

  @override
  Future<double?> loadFontSize() => loadTransliterationSize();

  @override
  Future<void> saveFontSize(double value) => saveTransliterationSize(value);
}
