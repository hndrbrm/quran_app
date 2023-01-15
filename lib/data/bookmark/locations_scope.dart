// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../mixin/initialize_binder.dart';
import '../../persistent/bookmark.dart';
import '../../quran/location.dart';

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
    locations[group] ??= List.empty();

    if (locations[group]!.contains(location)) {
      return;
    }

    final List<Location> newValue = <Location>[
      ...locations[group]!,
      location,
    ];

    locations = <String, List<Location>>{
      ...locations,
      group: newValue,
    };
  }

  void removeLocations(String group) {
    if (locations[group] != null) {
      locations.remove(group);
      locations = Map.from(locations);
    }
  }

  void removeLocation(String group, Location location) {
    if (locations[group] != null) {
      final List<Location> loc = locations[group]!;

      if (loc.contains(location)) {
        locations = {
          ...locations..remove(group),
          group: List.from(loc.where((element) => element != location)),
        };
      }
    }
  }
}
