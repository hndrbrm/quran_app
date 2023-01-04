// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../data/bookmark.dart';

abstract class BookmarkPersistent {
  FutureOr<List<Location>?> loadLocations();

  FutureOr<void> saveLocations(List<Location>? locations);
}

mixin BookmarkPreferences implements BookmarkPersistent {
  static const String _key = 'bookmark';

  @override
  Future<List<Location>?> loadLocations() async {
    final SharedPreferences sp = await SharedPreferences.getInstance();
    final String? value = sp.getString(_key);
    if (value == null) {
      return null;
    }

    final List<dynamic> locations = jsonDecode(value);
    return locations.map((e) => Location.fromJson(e)).toList(growable: false);
  }

  @override
  FutureOr<void> saveLocations(List<Location>? locations) {
    if (locations != null) {
      return SharedPreferences.getInstance().then(
        (SharedPreferences sp) => sp.setString(_key, jsonEncode(locations)),
      );
    }
  }
}
