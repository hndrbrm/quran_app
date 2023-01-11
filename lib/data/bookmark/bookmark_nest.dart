// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import 'groups_scope.dart';
import 'locations_scope.dart';

class BookmarkNest extends StatelessWidget {
  const BookmarkNest({
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
