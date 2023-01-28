// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../finder_mixin.dart';
import 'annotation_scope.dart';

export '../finder_mixin.dart';

mixin AnnotationMixin on FinderMixin {
  bool visible(BuildContext context) => watch<AnnotationScope>(context).visible;
  void toggle(BuildContext context) => read<AnnotationScope>(context).toggle();
}
