// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'pages/bookmark_page.dart';
import 'pages/home_page.dart';
import 'pages/surah_page.dart';

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

  @override
  WidgetBuilder? onGenerateBuilder(RouteSettings settings) {
    if (settings.name == name) {
      final arguments = settings.arguments as Map<String, dynamic>?;

      return (BuildContext context) => SurahPage(surah: arguments?['surah']);
    }

    return super.onGenerateBuilder(settings);
  }
}

mixin BookmarkRoute on GenerateRoute {
  static const String name = '/bookmark';

  @override
  WidgetBuilder? onGenerateBuilder(RouteSettings settings) {
    if (settings.name == name) {
      return (BuildContext context) => const BookmarkPage();
    }

    return super.onGenerateBuilder(settings);
  }
}
