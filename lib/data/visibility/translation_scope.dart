// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../persistent/visibility/translation.dart';
import 'visibility_scope.dart';

class TranslationScope extends VisibilityScope with TranslationPreferences {
  TranslationScope({
    super.key,
    required super.child,
  });

  @override
  Future<bool> loadVisibility() => loadTranslationVisibility();

  @override
  Future<void> saveVisibility(bool value) => saveTranslationVisibility(value);
}
