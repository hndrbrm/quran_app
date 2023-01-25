// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../page/home_page.dart';

mixin UnknownRoute {
  Route? onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (BuildContext context) => const HomePage(),
    );
  }
}
