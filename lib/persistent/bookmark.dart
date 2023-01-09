// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../data/bookmark.dart';

abstract class LocationsPersistent {
  FutureOr<Map<String, List<Location>>?> loadLocations();

  FutureOr<void> saveLocations(Map<String, List<Location>>? locations);
}

abstract class GroupsPersistent {
  FutureOr<List<String>?> loadGroups();

  FutureOr<void> saveGroups(List<String>? groups);
}

mixin LocationsPreferences implements LocationsPersistent {
  static const String _key = 'locations';

  @override
  Future<Map<String, List<Location>>?> loadLocations() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final String? value = sp.getString(_key);
    if (value == null) {
      return null;
    }

    final Map<String, dynamic> locations = jsonDecode(value);
    return locations.map(
      (String key, dynamic value) => MapEntry(
        key,
        (value as List<dynamic>).map(
          (dynamic e) => Location.fromJson(e as Map<String, dynamic>),
        ).toList(growable: false),
      ),
    );
  }

  @override
  FutureOr<void> saveLocations(Map<String, List<Location>>? locations) {
    if (locations != null) {
      return SharedPreferences.getInstance().then(
        (SharedPreferences sp) => sp.setString(_key, jsonEncode(locations)),
      );
    }
  }
}

mixin GroupsPreferences implements GroupsPersistent {
  static const String _key = 'groups';

  @override
  Future<List<String>?> loadGroups() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final String? value = sp.getString(_key);
    if (value == null) {
      return null;
    }

    final List<dynamic> groups = jsonDecode(value);
    return groups.map((e) => e as String).toList(growable: false);
  }

  @override
  FutureOr<void> saveGroups(List<String>? groups) {
    if (groups != null) {
      return SharedPreferences.getInstance().then(
        (SharedPreferences sp) => sp.setString(_key, jsonEncode(groups)),
      );
    }
  }
}
