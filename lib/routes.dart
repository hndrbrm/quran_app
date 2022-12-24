// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:quran_app/pages/bookmark.dart';

import 'pages/home.dart';
import 'pages/surah.dart';

abstract class RouteBinder {
  const RouteBinder();

  @protected
  @mustCallSuper
  Route<dynamic>? onGenerateRoute(RouteSettings settings) => null;
}

class RouteBound extends RouteBinder with
  UnknownRoute, HomeRoute, SurahRoute, BookmarkRoute
{
  const RouteBound._();

  static RouteBound get singleton => _singleton;
  static const RouteBound _singleton = RouteBound._();
}

mixin UnknownRoute {
  Route? onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const Home(),
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
        builder: (BuildContext context) => Surah(surah: arguments?['surah']),
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
        builder: (BuildContext context) => const Bookmark(),
      );
    }

    return super.onGenerateRoute(settings);
  }
}
