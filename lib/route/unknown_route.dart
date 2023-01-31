// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../language.dart';
import '../page/home_page.dart';

mixin UnknownRoute {
  Route? onUnknownRoute(RouteSettings settings) {
    Widget builder(BuildContext context) {
      LanguageBinding.local = AppLocalizations.of(context)!;
      return const HomePage();
    }

    return MaterialPageRoute(
      builder: builder,
      settings: settings,
    );
  }
}
