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

mixin _Locations on InitializeBinder, LocationsPreferences {
  ValueNotifier<List<Location>> get notifier;

  List<Location> get locations => notifier.value;
  set locations(List<Location> value) {
    saveLocations(value);
    notifier.value = value;
  }

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

class LocationsScope
  extends InheritedNotifier<ValueNotifier<List<Location>>>
  with InitializeBinder, LocationsPreferences, _Locations, _Location
{
  LocationsScope({
    super.key,
    required super.child,
  }) : super(notifier: ValueNotifier<List<Location>>(<Location>[])) {
    initialize();
  }

  static LocationsScope of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LocationsScope>()!;
  }

  @override
  ValueNotifier<List<Location>> get notifier => super.notifier!;
}

mixin _Groups on InitializeBinder, GroupsPreferences {
  ValueNotifier<List<String>> get notifier;

  List<String> get groups => notifier.value;
  set groups(List<String> value) {
    saveGroups(value);
    notifier.value = value;
  }

  @override
  void initialize() {
    super.initialize();

    () async {
      final List<String> locations = await loadGroups() ?? [];
      notifier.value = locations;
    }();
  }
}

mixin _Group on _Groups {
  set group(String value) {
    if (groups.contains(value)) {
      return;
    }

    groups = <String>[ value, ...groups ];
  }
}

class GroupsScope
  extends InheritedNotifier<ValueNotifier<List<String>>>
  with InitializeBinder, GroupsPreferences, _Groups, _Group
{
  GroupsScope({
    super.key,
    required super.child,
  }) : super(notifier: ValueNotifier<List<String>>(<String>[])) {
    initialize();
  }

  static GroupsScope of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GroupsScope>()!;
  }

  @override
  ValueNotifier<List<String>> get notifier => super.notifier!;

}

class BookmarkScope extends StatelessWidget {
  const BookmarkScope({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GroupsScope(
      child: LocationsScope(
        child: child,
      ),
    );
  }
}
