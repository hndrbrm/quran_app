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
mixin ${alphabet}Length on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == $surah) {
      return ${alphabet}AyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}
'''
    );
    surah = ayah.location.surah;
    ayahs.clear();
  }
}
