// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../routes.dart';

class QuranDrawer extends StatelessWidget {
  const QuranDrawer({ super.key });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            title: const Text('Beranda'),
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                HomeRoute.name,
                (route) => false,
              );
            },
          ),
          ListTile(
            title: const Text('Penanda'),
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                GroupsRoute.name,
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
