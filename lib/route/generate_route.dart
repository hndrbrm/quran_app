// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../language.dart';

mixin GenerateRoute {
  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    final WidgetBuilder? builder = onGenerateBuilder(settings);

    if (builder == null) {
      return null;
    }

    Widget newBuilder(BuildContext context) {
      LanguageBinding.local = AppLocalizations.of(context)!;
      return builder(context);
    }

    return MaterialPageRoute(
      builder: newBuilder,
      settings: settings,
    );
  }

  @protected
  @mustCallSuper
  WidgetBuilder? onGenerateBuilder(RouteSettings settings) => null;
}
