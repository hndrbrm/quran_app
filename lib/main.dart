// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'provider/bookmark.dart';
import 'provider/surah_font_size.dart';
import 'routes.dart';

void main() {
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget with
  UnknownRoute, RouteBinder, HomeRoute, SurahRoute, BookmarkRoute
{
  const QuranApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return SurahFontSizeProvider(
      child: BookmarkProvider(
        child: MaterialApp(
          title: 'Quran',
          onGenerateRoute: onGenerateRoute,
          onUnknownRoute: onUnknownRoute,
          theme: ThemeData(
            fontFamily: 'Kemenag',
          ),
        ),
      ),
    );
  }
}
