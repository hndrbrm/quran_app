// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import '../../quran/location.dart';
import '../preferences.dart';

export '../preferences.dart';

abstract class LocationsPersistent {
  FutureOr<Map<String, List<Location>>?> loadLocations();

  FutureOr<void> saveLocations(Map<String, List<Location>> locations);
}

mixin LocationsPreferences
  on Preferences
  implements LocationsPersistent
{
  static const String _key = 'locations';

  @override
  Future<Map<String, List<Location>>?> loadLocations() async {
    final String? value = await loadString(_key);
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
  Future<void> saveLocations(Map<String, List<Location>> locations) async {
    final String value = jsonEncode(locations);
    await saveString(_key, value);
  }
}
