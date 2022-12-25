// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'pages/bookmark_page.dart';
import 'pages/home_page.dart';
import 'pages/surah_page.dart';

abstract class RouteBinder {
  @protected
  @mustCallSuper
  Route<dynamic>? onGenerateRoute(RouteSettings settings) => null;
}

mixin UnknownRoute {
  Route? onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const HomePage(),
    );
  }
}

mixin HomeRoute on RouteBinder, UnknownRoute {
  static const String name = '/';

  @override
  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == name) {
      return onUnknownRoute(settings);
    }

    return super.onGenerateRoute(settings);
  }
}

mixin SurahRoute on RouteBinder {
  static const String name = '/surah';

  @override
  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == name) {
      final arguments = settings.arguments as Map<String, dynamic>?;

      return MaterialPageRoute(
        builder: (BuildContext context) => SurahPage(surah: arguments?['surah']),
      );
    }

    return super.onGenerateRoute(settings);
  }
}

mixin BookmarkRoute on RouteBinder {
  static const String name = '/bookmark';

  @override
  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == name) {
      return MaterialPageRoute(
        builder: (BuildContext context) => const BookmarkPage(),
      );
    }

    return super.onGenerateRoute(settings);
  }
}
