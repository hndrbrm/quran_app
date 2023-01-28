// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'preferences.dart';

export 'preferences.dart';

abstract class LafazPersistent {
  FutureOr<bool> loadVisibility();

  FutureOr<void> saveVisibility(bool value);
}

mixin LafazPreferences
  on Preferences
  implements LafazPersistent
{
  static const String _key = 'lafaz_visibility';

  @override
  Future<bool> loadVisibility() => loadBool(_key);

  @override
  Future<void> saveVisibility(bool value) => saveBool(_key, value);
}
