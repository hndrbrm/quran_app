// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../data.dart';

mixin AnnotationMixin on State {
  AnnotationScope get annotation => AnnotationScope.readOf(context);

  bool get visible => AnnotationScope.watchOf(context).visible;
}
