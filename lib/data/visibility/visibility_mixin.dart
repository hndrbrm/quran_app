// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../finder_mixin.dart';
import 'visibility_scope.dart';

export '../finder_mixin.dart';

mixin VisibilityMixin on FinderMixin {
  bool visible<T extends VisibilityScope>(BuildContext context) =>
    watch<T>(context).visible;

  void toggle<T extends VisibilityScope>(BuildContext context) =>
    read<T>(context).toggle();
}
