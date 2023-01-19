// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'page/bookmark/groups_page.dart';
import 'page/bookmark/locations_page.dart';
import 'page/home_page.dart';
import 'page/surah_page.dart';

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

mixin UnknownRoute {
  Route? onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const HomePage(),
    );
  }
}

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

mixin SurahRoute on GenerateRoute {
  static const String name = '/surah';

  static Future<T?> pushNamed<T extends Object?>(
    BuildContext context,
    int surah, [
    int? ayah,
  ]) {
    return Navigator.of(context).pushNamed(
      name,
      arguments: {
        'surah': surah,
        'ayah': ayah,
      },
    );
  }

  @override
  WidgetBuilder? onGenerateBuilder(RouteSettings settings) {
    if (settings.name == name) {
      final arguments = settings.arguments as Map<String, dynamic>?;

      return (BuildContext context) => SurahPage(
        surah: arguments?['surah'],
        ayah: arguments?['ayah'],
      );
    }

    return super.onGenerateBuilder(settings);
  }
}

mixin GroupsRoute on GenerateRoute {
  static const String name = '/groups';

  static Future<T?> root<T extends Object?>(BuildContext context) {
    return Navigator.of(context).pushNamedAndRemoveUntil(
      name,
      (route) => false,
    );
  }

  @override
  WidgetBuilder? onGenerateBuilder(RouteSettings settings) {
    if (settings.name == name) {
      return (BuildContext context) => const GroupsPage();
    }

    return super.onGenerateBuilder(settings);
  }
}

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
