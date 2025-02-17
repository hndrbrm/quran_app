// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:quran_app/quran/quran.dart';
import 'package:quran_kemenag/quran_kemenag.dart';

void main() {
  final File file = File('./ayahs.tsv');
  final List<String> lines = file.readAsLinesSync();

  int surah = 1;
  final List<Ayah> ayahs = <Ayah>[];
  for (int i = 2; i < lines.length; i++) {
    final String line = lines[i];
    final Ayah ayah = Ayah.parse(line);

    if (ayah.location.surah == surah) {
      ayahs.add(ayah);

      if (lines.length > i + 1) {
        continue;
      }
    }

    final String alphabet = QuranBinding.instance.getSurahAlphabet(surah);
    // ignore: avoid_print
    print(
'''
mixin ${alphabet}AyahTransliterate on AyahTransliterate {
  static const List ayahs = <String>[
    ${ayahs.map((e) => '\'${e.transliterate}\'').join(',\n    ')}
  ];

  @override
  String getAyahTransliterate(Location location) {
    if (location.surah == $surah) {
      return ayahs[location.ayah - 1];
    }

    return super.getAyahTransliterate(location);
  }
}
'''
    );
    surah = ayah.location.surah;
    ayahs.clear();
    ayahs.add(ayah);
  }
}
