// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../data/bookmark.dart';

mixin BookmarkMixin {
  void removeGroup(BuildContext context, String group) {
    GroupsScope.readOf(context).removeGroup(group);
    LocationsScope.readOf(context).removeLocations(group);
  }

  void removeGroupThenPop(BuildContext context, String group) {
    removeGroup(context, group);
    Navigator.of(context).pop();
  }
}
