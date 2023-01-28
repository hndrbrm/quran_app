// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import '../../persistent/font_size/translation_size.dart';
import 'font_size_base.dart';

class TranslationSizeScope
  extends FontSizeScopeBase
  with Preferences, TranslationSizePreferences
{
  TranslationSizeScope({
    super.key,
    required super.child,
  });

  @override
  Future<double?> loadFontSize() => loadTranslationSize();

  @override
  Future<void> saveFontSize(double value) => saveTranslationSize(value);
}
