// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:quran_app/quran/quran.dart' hide Ayah;
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

    final String alphabet = Quran.instance.getSurahAlphabet(surah);
    print(
'''
mixin ${alphabet}TafsirTahlili on AyahTafsirTahlili {
  static const List ayahs = <String>[
    ${ayahs.map((e) => '\'\'\'${e.tafsirTahlili}\'\'\'').join(',\n    ')}
  ];

  @override
  String getAyahTafsirTahlili(int surah, int ayah) {
    if (surah == $surah) {
      return ayahs[ayah - 1];
    }

    return super.getAyahTafsirTahlili(surah, ayah);
  }
}
'''
    );
    surah = ayah.location.surah;
    ayahs.clear();
    ayahs.add(ayah);
  }
}
