// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../persistent/visibility/lafaz.dart';
import 'visibility_scope.dart';

class LafazScope extends VisibilityScope with LafazPreferences {
  LafazScope({
    super.key,
    required super.child,
  });

  @override
  Future<bool> loadVisibility() => loadLafazVisibility();

  @override
  Future<void> saveVisibility(bool value) => saveLafazVisibility(value);
}
