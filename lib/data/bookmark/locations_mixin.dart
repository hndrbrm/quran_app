// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../quran/location.dart';
import '../finder_mixin.dart';
import 'locations_scope.dart';

export '../../data/finder_mixin.dart';
export '../../quran/location.dart';

mixin LocationsMixin on FinderMixin {
  List<Location> locations(BuildContext context, String group) =>
    watch<LocationsScope>(context).locations[group] ??
    List.empty();

  void removeLocation(BuildContext context, String group, Location location) =>
    read<LocationsScope>(context).removeLocation(group, location);

  void addLocation(BuildContext context, String group, Location location) =>
    read<LocationsScope>(context).addLocation(group, location);
}
