// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/widgets.dart';

import '../../persistent/transliteration_size.dart';
import 'font_size_base.dart';

class TransliterationSizeScope
  extends FontSizeScopeBase
  with TransliterationSizePreferences
{
  TransliterationSizeScope({
    super.key,
    required super.child,
  });

  static TransliterationSizeScope watchOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TransliterationSizeScope>()!;
  }

  @override
  Future<double?> loadFontSize() => loadTransliterationSize();

  @override
  FutureOr<void> saveFontSize(double? value) => saveTransliterationSize(value);
}
