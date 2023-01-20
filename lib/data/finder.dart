// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

extension BuildContextExtension on BuildContext {
  T watch<T extends InheritedWidget>() => dependOnInheritedWidgetOfExactType<T>()!;

  T read<T extends InheritedWidget>() => findAncestorWidgetOfExactType<T>()!;
}
