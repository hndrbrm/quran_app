// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'visibility.dart';

export '../preferences.dart';
export 'visibility.dart';

abstract class AnnotationPersistent {
  FutureOr<bool> loadAnnotationVisibility();

  FutureOr<void> saveAnnotationVisibility(bool value);
}

mixin AnnotationPreferences
  on Preferences, VisibilityByKeyPreferences
  implements AnnotationPersistent
{
  static const String _key = 'annotation_visibility';

  @override
  Future<bool> loadAnnotationVisibility() async =>
    await loadVisibilityByKey(_key) ?? false;

  @override
  Future<void> saveAnnotationVisibility(bool value) =>
    saveVisibilityByKey(_key, value);
}
