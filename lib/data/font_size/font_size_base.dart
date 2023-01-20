// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

import 'package:flutter/widgets.dart';

import '../initialize_binder.dart';

abstract class FontSizeScopeBase
  extends InheritedNotifier<ValueNotifier<double>>
  with InitializeBinder, _FontSizePersistent, _FontSize
{
  FontSizeScopeBase({
    super.key,
    required super.child,
  }) : super(notifier: ValueNotifier<double>(defaultSize)) {
    initialize();
  }

  static const double defaultSize = 14.0;

  @override
  ValueNotifier<double> get notifier => super.notifier!;
}

mixin _FontSizePersistent {
  FutureOr<double?> loadFontSize();
  FutureOr<void> saveFontSize(double? value);
}

mixin _FontSize on InitializeBinder, _FontSizePersistent {
  ValueNotifier<double> get notifier;

  double get fontSize => notifier.value;
  set fontSize(double value) {
    saveFontSize(value);
    notifier.value = value;
  }

  @override
  void initialize() {
    super.initialize();

    void notify(double? fontSize) {
      if (fontSize != null) {
        notifier.value = fontSize;
      }
    }

    final FutureOr<double?> fontSize = loadFontSize();
    if (fontSize is double?) {
      notify(fontSize);
    } else {
      fontSize.then((double? fontSize) => notify(fontSize));
    }
  }
}
