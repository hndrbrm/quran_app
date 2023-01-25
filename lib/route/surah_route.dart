// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../page/surah_page.dart';
import 'generate_route.dart';

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
