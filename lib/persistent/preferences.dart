// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';

mixin Preferences {
  Future<bool> loadBool(String key) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getBool(key) ?? false;
  }

  Future<double?> loadDouble(String key) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getDouble(key);
  }

  Future<String?> loadString(String key) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString(key);
  }

  Future<void> saveBool(String key, bool value) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setBool(key, value);
  }

  Future<void> saveDouble(String key, double value) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setDouble(key, value);
  }

  Future<void> saveString(String key, String value) async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    await sp.setString(key, value);
  }
}
