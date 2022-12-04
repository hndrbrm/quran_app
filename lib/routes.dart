// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'pages/home.dart';

abstract class RouteBinder {
  @protected
  @mustCallSuper
  Route<dynamic>? onGenerateRoute(RouteSettings settings) => null;

  Route<dynamic>? onUnknownRoute(RouteSettings settings) => null;
}

class RouteBound extends RouteBinder with HomeRoute {
  RouteBound._();

  static RouteBound get instance => _instance;
  static final RouteBound _instance = RouteBound._();
}

mixin HomeRoute on RouteBinder {
  static const String name = 'home';

  MaterialPageRoute createRoute() {
    return MaterialPageRoute(
      builder: (BuildContext context) => const Home(),
    );
  }

  @override
  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == name) {
      return onUnknownRoute(settings);
    }

    return super.onGenerateRoute(settings);
  }

  @override
  Route? onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const Home(),
    );
  }
}
