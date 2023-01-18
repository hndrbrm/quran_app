// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

abstract class VisibilityPersistent {
  FutureOr<bool> loadVisibility();

  FutureOr<void> saveVisibility(bool value);
}

mixin VisibilityPreferences implements VisibilityPersistent {
  static const String _key = 'visibility';

  @override
  Future<bool> loadVisibility() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getBool(_key) ?? false;
  }

  @override
  Future<void> saveVisibility(bool value) {
    return SharedPreferences.getInstance().then(
      (SharedPreferences sp) => sp.setBool(_key, value),
    );
  }
}
