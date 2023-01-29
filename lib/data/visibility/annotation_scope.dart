// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../persistent/visibility/annotation.dart';
import 'visibility_scope.dart';

class AnnotationScope extends VisibilityScope with AnnotationPreferences {
  AnnotationScope({
    super.key,
    required super.child,
  });

  @override
  Future<bool> loadVisibility() => loadAnnotationVisibility();

  @override
  Future<void> saveVisibility(bool value) => saveAnnotationVisibility(value);
}
