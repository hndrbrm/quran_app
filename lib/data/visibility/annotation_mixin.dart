// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import 'annotation_scope.dart';
import 'visibility_mixin.dart';

export '../finder_mixin.dart';

mixin AnnotationMixin on VisibilityMixin<AnnotationScope> {
  bool annotationVisible(BuildContext context) => visible(context);
  void annotationToggle(BuildContext context) => toggle(context);
}
