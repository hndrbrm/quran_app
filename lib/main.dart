// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'data/bookmark/bookmark_nest.dart';
import 'data/font_size/translation_size_scope.dart';
import 'data/font_size/transliteration_size_scope.dart';
import 'data/theme/photon_mode_scope.dart';
import 'data/theme/theme_mode_mixin.dart';
import 'data/visibility/annotation_scope.dart';
import 'data/visibility/lafaz_scope.dart';
import 'data/visibility/translation_scope.dart';
import 'data/visibility/transliteration_scope.dart';
import 'route/generate_route.dart';
import 'route/groups_route.dart';
import 'route/home_route.dart';
import 'route/locations_route.dart';
import 'route/surah_route.dart';
import 'route/unknown_route.dart';
import 'singleton.dart';
import 'theme.dart';

void main() {
  Singleton.ensureInitialized();
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget with
  GenerateRoute, UnknownRoute, HomeRoute, SurahRoute, GroupsRoute,
  LocationsRoute,
  FinderMixin, ThemeModeMixin
{
  const QuranApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return _ScopedData(
      builder: (BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quran',
        onGenerateRoute: onGenerateRoute,
        onUnknownRoute: onUnknownRoute,
        theme: QuranThemeData.light(),
        darkTheme: QuranThemeData.dark(),
        themeMode: watchThemeMode(context),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}

class _ScopedData extends StatelessWidget {
  const _ScopedData({ required this.builder });

  final WidgetBuilder builder;

  @override
  Widget build(BuildContext context) {
    return PhotonModeScope(
      child: TransliterationSizeScope(
        child: TranslationSizeScope(
          child: BookmarkNest(
            child: TransliterationScope(
              child: LafazScope(
                child: TranslationScope(
                  child: AnnotationScope(
                    child: Builder(builder: builder),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
