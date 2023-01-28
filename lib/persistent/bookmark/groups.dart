// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import '../preferences.dart';

export '../preferences.dart';

abstract class GroupsPersistent {
  FutureOr<List<String>?> loadGroups();

  FutureOr<void> saveGroups(List<String> groups);
}

mixin GroupsPreferences
  on Preferences
  implements GroupsPersistent
{
  static const String _key = 'groups';

  @override
  Future<List<String>?> loadGroups() async {
    final String? value = await loadString(_key);
    if (value != null) {
      final List<dynamic> groups = jsonDecode(value);
      return groups.map((e) => e as String).toList(growable: false);
    }

    return null;
  }

  @override
  Future<void> saveGroups(List<String> groups) {
    final String value = jsonEncode(groups);
    return saveString(_key, value);
  }
}
