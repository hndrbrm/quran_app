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

extension _MapExtension on Map<String, List<Location>> {
  Map<String, List<Location>> copyWithout(String group) {
    return {
      for (final MapEntry<String, List<Location>> entry in entries)
        if (entry.key != group)
          ...{ entry.key: entry.value },
    };
  }
}

mixin _Location on _Locations {
  void addLocation(String group, Location location) {
    final List<Location> loc = locations[group] ?? [];
    if (loc.contains(location)) {
      return;
    }

    locations = {
      ...locations.copyWithout(group),
      group: <Location>[ ...loc, location ],
    };
  }

  void removeLocations(String group) {
    if (locations[group] != null) {
      locations = locations.copyWithout(group);
    }
  }

  void removeLocation(String group, Location location) {
    if (locations[group] != null) {
      final List<Location> loc = locations[group]!;

      if (loc.contains(location)) {
        final List<Location> newValue = List.from(
          loc.where((Location element) => element != location),
        );

        locations = {
          ...locations.copyWithout(group),
          if (newValue.isEmpty)
          group: newValue,
        };
      }
    }
  }
}
