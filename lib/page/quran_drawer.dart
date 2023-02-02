// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quran_app/language.dart';

import '../route/groups_route.dart';
import '../route/home_route.dart';

class QuranDrawer extends StatelessWidget {
  const QuranDrawer({ super.key });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Lottie.asset('lottie/drawer.zip'),
          ),
          ListTile(
            title: Text(LanguageBinding.local.surahList),
            onTap: () => HomeRoute.root(context),
          ),
          ListTile(
            title: Text(LanguageBinding.local.bookmark),
            onTap: () => GroupsRoute.root(context),
          ),
        ],
      ),
    );
  }
}
