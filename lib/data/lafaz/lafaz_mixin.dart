// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../finder_mixin.dart';
import 'lafaz_scope.dart';

export '../../data/finder_mixin.dart';

mixin LafazMixin on FinderMixin {
  bool visible(BuildContext context) => watch<LafazScope>(context).visible;
  void toggle(BuildContext context) => read<LafazScope>(context).toggle();
}
