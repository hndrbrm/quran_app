// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

abstract class GenerateRoute {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final WidgetBuilder? builder = onGenerateBuilder(settings);
    if (builder == null) {
      return null;
    }

    return MaterialPageRoute(
      builder: builder,
    );
  }

  @protected
  @mustCallSuper
  WidgetBuilder? onGenerateBuilder(RouteSettings settings) => null;
}
