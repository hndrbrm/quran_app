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

    final List<String> eachAnnotation = <String>[];
    for (int j = 0; j < ayahs.length; j++) {
      final Ayah ayah = ayahs[j];

      final bool isEmpty = ayah.annotation.contents.reduce(
        (value, element) => value + element
      ).trim().isEmpty;

      if (isEmpty) {
        continue;
      }

      eachAnnotation.add('$j: \'${ayah.annotation}\'');
    }

    if (eachAnnotation.isNotEmpty) {
      final String alphabet = Quran.instance.getSurahAlphabet(surah);
      // ignore: avoid_print
      print(
          '''
mixin ${alphabet}AyahAnnotation on AyahAnnotation {
  static const Map<int, String> ayahs = <int, String>{
    ${eachAnnotation.join(',\n    ')}
  };

  @override
  String getAyahAnnotation(Location location) {
    if (location.surah == $surah) {
      return ayahs[location.ayah - 1] ?? '';
    }

    return super.getAyahAnnotation(location);
  }
}
'''
      );
    }
    surah = ayah.location.surah;
    ayahs.clear();
    ayahs.add(ayah);
  }
}
