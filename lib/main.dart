// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'data/bookmark/bookmark_nest.dart';
import 'data/font_size/translation_size_scope.dart';
import 'data/font_size/transliteration_size_scope.dart';
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

void main() {
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget with
  GenerateRoute, UnknownRoute, HomeRoute, SurahRoute, GroupsRoute,
  LocationsRoute
{
  const QuranApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return _ScopedData(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Quran',
        onGenerateRoute: onGenerateRoute,
        onUnknownRoute: onUnknownRoute,
        theme: ThemeData(
          fontFamily: 'Quran',
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}

class _ScopedData extends StatelessWidget {
  const _ScopedData({ required this.child });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TransliterationSizeScope(
      child: TranslationSizeScope(
        child: BookmarkNest(
          child: TransliterationScope(
            child: LafazScope(
              child: TranslationScope(
                child: AnnotationScope(
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
