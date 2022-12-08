// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'routes.dart';

void main() {
  runApp(const QuranApp());
}

class QuranApp extends StatelessWidget {
  const QuranApp({ super.key });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quran',
      onGenerateRoute: RouteBound.instance.onGenerateRoute,
      onUnknownRoute: RouteBound.instance.onUnknownRoute,
      theme: ThemeData(
        fontFamily: 'Kemenag',
      ),
    );
  }
}
