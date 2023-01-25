// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../page/bookmark/locations_page.dart';
import 'generate_route.dart';

mixin LocationsRoute on GenerateRoute {
  static const String name = '/locations';

  static Future<T?> push<T extends Object?>(BuildContext context, String group) {
    return Navigator.of(context).pushNamed(
      name,
      arguments: { 'group': group },
    );
  }

  @override
  WidgetBuilder? onGenerateBuilder(RouteSettings settings) {
    if (settings.name == name) {
      final arguments = settings.arguments as Map<String, dynamic>?;

      return (BuildContext context) => LocationsPage(group: arguments?['group']);
    }

    return super.onGenerateBuilder(settings);
  }
}
