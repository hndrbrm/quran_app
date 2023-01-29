// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/widgets.dart';

import '../../persistent/visibility/annotation.dart';
import '../initialize_binder.dart';

abstract class VisibilityScope
  extends InheritedNotifier<ValueNotifier<bool>>
  with
    InitializeBinder,
    Preferences, VisibilityByKeyPreferences, _VisibilityPreferences, _Visibility
{
  VisibilityScope({
    super.key,
    required super.child,
  }) : super(notifier: ValueNotifier<bool>(true)) {
    initialize();
  }

  @override
  ValueNotifier<bool> get notifier => super.notifier!;
}

mixin _VisibilityPreferences {
  Future<bool> loadVisibility();
  Future<void> saveVisibility(bool value);
}

mixin _Visibility on InitializeBinder, _VisibilityPreferences {
  ValueNotifier<bool> get notifier;

  bool get visible => notifier.value;
  set visible(bool value) {
    saveVisibility(value);
    notifier.value = value;
  }

  @override
  void initialize() {
    super.initialize();

    loadVisibility().then(
      (bool value) => notifier.value = value,
    );
  }

  void toggle() => visible = !visible;
}
