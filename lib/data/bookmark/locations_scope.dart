// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../mixin/initialize_binder.dart';
import '../../persistent/bookmark.dart';

class LocationsScope
  extends InheritedNotifier<ValueNotifier<Map<String, List<Location>>>>
  with InitializeBinder, LocationsPreferences, _Locations, _Location
{
  LocationsScope({
    super.key,
    required super.child,
  }) : super(notifier: ValueNotifier<Map<String, List<Location>>>(defaultLocations)) {
    initialize();
  }

  static const Map<String, List<Location>> defaultLocations = <String, List<Location>>{};

  static LocationsScope watchOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<LocationsScope>()!;
  }

  static LocationsScope readOf(BuildContext context) {
    return context.findAncestorWidgetOfExactType<LocationsScope>()!;
  }

  @override
  ValueNotifier<Map<String, List<Location>>> get notifier => super.notifier!;
}

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

mixin _Locations on InitializeBinder, LocationsPreferences {
  ValueNotifier<Map<String, List<Location>>> get notifier;

  Map<String, List<Location>> get locations => notifier.value;
  set locations(Map<String, List<Location>> value) {
    saveLocations(value);
    notifier.value = value;
  }

  @override
  void initialize() {
    super.initialize();

    () async {
      final Map<String, List<Location>>? locations = await loadLocations();
      if (locations != null) {
        notifier.value = locations;
      }
    }();
  }
}

mixin _Location on _Locations {
  void addLocation(String group, Location location) {
    locations[group] ??= [];

    if (locations[group]!.contains(location)) {
      return;
    }

    final List<Location> newValue = [
      ...locations[group]!,
      location,
    ];

    locations = {
      ...locations,
      group: newValue,
    };
  }

  void removeLocation(String group, [ Location? location ]) {
    if (locations[group] != null) {
      final bool exist = location == null
        ? locations.remove(group) != null
        : locations[group]!.remove(location);
      if (exist) {
        locations = Map.from(locations);
      }
    }
  }
}
