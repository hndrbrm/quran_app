// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

mixin FinderMixin {
  T watch<T extends InheritedWidget>(BuildContext context) =>
    context.dependOnInheritedWidgetOfExactType<T>()!;

  T read<T extends InheritedWidget>(BuildContext context) =>
    context.findAncestorWidgetOfExactType<T>()!;
}
