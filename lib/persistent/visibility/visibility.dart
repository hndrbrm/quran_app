// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import '../preferences.dart';

export '../preferences.dart';

mixin VisibilityPreferences on Preferences {
  Future<bool> loadVisibility(String key) => loadBool(key);

  Future<void> saveVisibility(String key, bool value) => saveBool(key, value);
}
