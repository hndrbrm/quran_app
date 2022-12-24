// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:quran_transliteration/quran_transliteration.dart';

import '../quran/quran.dart';
import '../routes.dart';
import 'quran_drawer.dart';

class Home extends StatelessWidget {
  const Home({ super.key });

  @override
  Widget build(BuildContext context) {
    final Transliteration transliteration = ExtendedBuckwalterTransliteration();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Surah'),
      ),
      drawer: const QuranDrawer(),
      body: ListView.builder(
        itemCount: 114,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(Quran.instance.getLatin(index + 1)),
            subtitle: Text(Quran.instance.getTranslate(index + 1)),
            trailing: Text(
              transliteration.forward(Quran.instance.getTransliterate(index + 1)),
            ),
            onTap: () => Navigator.of(context).pushNamed(
              SurahRoute.name,
              arguments: {
                'surah': index + 1,
              },
            ),
          );
        },
      ),
    );
  }
}
