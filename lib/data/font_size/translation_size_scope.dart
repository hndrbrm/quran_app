// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:quran_app/data/font_size/font_size_base.dart';

import '../../persistent/translation_size.dart';

class TranslationSizeScope
  extends FontSizeScopeBase
  with TranslationSizePreferences
{
  TranslationSizeScope({
    super.key,
    required super.child,
  });

  static TranslationSizeScope watchOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TranslationSizeScope>()!;
  }

  @override
  Future<double?> loadFontSize() => loadTranslationSize();

  @override
  FutureOr<void> saveFontSize(double? value) => saveTranslationSize(value);
}
