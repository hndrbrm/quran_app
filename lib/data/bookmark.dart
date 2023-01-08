// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../persistent/bookmark.dart';

class Location {
  const Location(this.surah, this.ayah)
    : assert(1 <= surah && surah <= 114);

  Location.fromJson(Map<String, dynamic> json)
    : surah = json['surah'],
      ayah = json['ayah'];

  final int surah;
  final int ayah;

  Map<String, dynamic> toJson() => {
    'surah': surah,
    'ayah': ayah,
  };

  @override
  bool operator ==(Object other) {
    return
      other is Location &&
      other.surah == surah &&
      other.ayah == ayah;
  }

  @override
  int get hashCode => Object.hash(surah, ayah);
}

mixin InitializeBinder {
  void initialize() {}
}

mixin _Locations on InitializeBinder, BookmarkPreferences {
  ValueNotifier<List<Location>> get notifier;

  List<Location> get locations => notifier.value;
  set locations(List<Location> value) => notifier.value = value;

  @override
  void initialize() {
    super.initialize();

    () async {
      final List<Location> locations = await loadLocations() ?? [];
      notifier.value = locations;
    }();
  }
}

mixin _Location on _Locations {
  set location(Location value) {
    if (locations.contains(value)) {
      return;
    }

    locations = <Location>[ value, ...locations ];
  }
}

class BookmarkScope
  extends InheritedNotifier<ValueNotifier<List<Location>>>
  with InitializeBinder, BookmarkPreferences, _Locations, _Location
{
  BookmarkScope({
    super.key,
    required super.child,
  }) : super(notifier: ValueNotifier<List<Location>>(<Location>[])) {
    initialize();
  }

  static BookmarkScope of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BookmarkScope>()!;
  }

  @override
  ValueNotifier<List<Location>> get notifier => super.notifier!;
}
