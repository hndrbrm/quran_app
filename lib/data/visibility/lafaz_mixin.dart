// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import 'lafaz_scope.dart';
import 'visibility_mixin.dart';

export '../finder_mixin.dart';

mixin LafazMixin on VisibilityMixin {
  bool lafazVisible(BuildContext context) => visible<LafazScope>(context);
  void lafazToggle(BuildContext context) => toggle<LafazScope>(context);
}
