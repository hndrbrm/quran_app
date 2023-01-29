// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'visibility.dart';

export '../preferences.dart';
export 'visibility.dart';

abstract class LafazPersistent {
  FutureOr<bool> loadLafazVisibility();

  FutureOr<void> saveLafazVisibility(bool value);
}

mixin LafazPreferences
  on Preferences, VisibilityByKeyPreferences
  implements LafazPersistent
{
  static const String _key = 'lafaz_visibility';

  @override
  Future<bool> loadLafazVisibility() => loadVisibilityByKey(_key);

  @override
  Future<void> saveLafazVisibility(bool value) => saveVisibilityByKey(_key, value);
}
