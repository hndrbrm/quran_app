// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../persistent/visibility/transliteration.dart';
import 'visibility_scope.dart';

class TransliterationScope
  extends VisibilityScope
  with TransliterationPreferences
{
  TransliterationScope({
    super.key,
    required super.child,
  });

  @override
  Future<bool> loadVisibility() => loadTransliterationVisibility();

  @override
  Future<void> saveVisibility(bool value) => saveTransliterationVisibility(value);
}
