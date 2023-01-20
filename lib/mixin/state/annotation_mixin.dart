// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../data/annotation_scope.dart';
import '../../data/finder.dart';

mixin AnnotationMixin on State {
  AnnotationScope get annotation => context.read<AnnotationScope>();

  bool get visible => context.watch<AnnotationScope>().visible;
}
