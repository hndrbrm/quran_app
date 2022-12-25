// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
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

class Bookmark extends InheritedWidget {
  const Bookmark({
    super.key,
    required this.locations,
    required this.setLocations,
    required super.child,
  });

  final List<Location> locations;
  final void Function(List<Location> locations) setLocations;

  set locations(List<Location> locations) => setLocations(locations);
  set location(Location location) => _setLocation(location);

  static Bookmark of(BuildContext context) {
    final Bookmark? result = context.dependOnInheritedWidgetOfExactType<Bookmark>();
    assert(result != null, 'No Bookmark found in context');
    return result!;
  }

  void _setLocation(Location location) {
    if (locations.contains(location)) {
      return;
    }

    locations = <Location>[
      ...locations,
      location,
    ];
  }

  @override
  bool updateShouldNotify(Bookmark oldWidget) {
    return locations != oldWidget.locations;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IterableProperty('locations', locations));
  }
}

class BookmarkData extends StatefulWidget {
  const BookmarkData({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<BookmarkData> createState() => _BookmarkDataState();
}

class _BookmarkDataState extends State<BookmarkData> with
  BookmarkPreferences
{
  List<Location> _locations = [];

  @override
  void initState() {
    super.initState();

    () async {
      _locations = await loadLocations() ?? [];
      if (mounted) {
        setState(() {});
      }
    }();
  }

  @override
  Widget build(BuildContext context) {
    return Bookmark(
      locations: _locations,
      setLocations: (List<Location> locations) {
        if (locations != _locations) {
          setState(() => _locations = locations);
          saveLocations(locations);
        }
      },
      child: widget.child,
    );
  }
}
