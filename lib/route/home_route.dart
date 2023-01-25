// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../page/home_page.dart';
import 'generate_route.dart';

mixin HomeRoute on GenerateRoute {
  static const String name = '/';

  static Future<T?> root<T extends Object?>(BuildContext context) {
    return Navigator.of(context).pushNamedAndRemoveUntil(
      name,
      (route) => false,
    );
  }

  @override
  WidgetBuilder? onGenerateBuilder(RouteSettings settings) {
    if (settings.name == name) {
      return (BuildContext context) => const HomePage();
    }

    return super.onGenerateBuilder(settings);
  }
}
