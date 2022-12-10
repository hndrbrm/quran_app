// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../quran/quran.dart';

class Surah extends StatelessWidget {
  const Surah(this.surah, { super.key });

  final int surah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Quran.instance.getLatin(surah)),
      ),
      body: ListView.builder(
        itemCount: Quran.instance.getLength(surah),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(
              Quran.instance.getAyahTransliterate(surah, index + 1),
              textDirection: TextDirection.rtl,
            ),
            subtitle: Text(Quran.instance.getAyahTranslate(surah, index + 1)),
          );
        },
      ),
    );
  }
}
