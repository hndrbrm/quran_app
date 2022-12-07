// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../quran/quran.dart';

class Home extends StatelessWidget {
  const Home({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 114,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(Quran.instance.getLatin(index + 1)),
            subtitle: Text(Quran.instance.getTranslate(index + 1)),
          );
        }
      ),
    );
  }
}
