// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../persistent/visibility/lafaz.dart';
import '../initialize_binder.dart';

class LafazScope
  extends InheritedNotifier<ValueNotifier<bool>>
  with
    InitializeBinder,
    Preferences, VisibilityPreferences, LafazPreferences, _Visibility
{
  LafazScope({
    super.key,
    required super.child,
  }) : super(notifier: ValueNotifier<bool>(defaultVisibility)) {
    initialize();
  }

  static const bool defaultVisibility = true;

  @override
  ValueNotifier<bool> get notifier => super.notifier!;
}

mixin _Visibility on InitializeBinder, LafazPreferences {
  ValueNotifier<bool> get notifier;

  bool get visible => notifier.value;
  set visible(bool value) {
    saveLafazVisibility(value);
    notifier.value = value;
  }

  @override
  void initialize() {
    super.initialize();

    loadLafazVisibility().then(
      (bool value) => notifier.value = value,
    );
  }

  void toggle() => visible = !visible;
}
