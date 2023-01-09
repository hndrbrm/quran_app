// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'data/bookmark.dart';
import 'data/translation_size.dart';
import 'data/transliteration_size.dart';
import 'routes.dart';

void main() {
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget with
  UnknownRoute, GenerateRoute, HomeRoute, SurahRoute, GroupsRoute,
  LocationsRoute
{
  const QuranApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return TransliterationSizeData(
      child: TranslationSizeData(
        child: BookmarkScope(
          child: MaterialApp(
            title: 'Quran',
            onGenerateRoute: onGenerateRoute,
            onUnknownRoute: onUnknownRoute,
            theme: ThemeData(
              fontFamily: 'Kemenag',
            ),
          ),
        ),
      ),
    );
  }
}
