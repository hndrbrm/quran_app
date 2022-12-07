// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';

import 'quran.dart';

mixin AyahTransliterate on Ayah {
  @protected
  @mustCallSuper
  String getAyahTransliterate(int surah, int ayah) => '';
}

mixin FatihahAyahTransliterate on AyahTransliterate {
  static const List ayahs = <String>[
    'بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ',
    'اَلْحَمْدُ لِلّٰهِ رَبِّ الْعٰلَمِيْن',
    'الرَّحْمٰنِ الرَّحِيْم',
    'مٰلِكِ يَوْمِ الدِّيْن',
    'اِيَّاكَ نَعْبُدُ وَاِيَّاكَ نَسْتَعِيْنُۗ',
    'اِهْدِنَا الصِّرَاطَ الْمُسْتَقِيْمَۙ',
    'صِرَاطَ الَّذِيْنَ اَنْعَمْتَ عَلَيْهِمْ ەۙ غَيْرِ الْمَغْضُوْبِ عَلَيْهِمْ وَلَا الضَّاۤلِّيْن',
  ];

  @override
  String getAyahTransliterate(int surah, int ayah) {
    if (surah == 1) {
      return ayahs[ayah - 1];
    }

    return super.getAyahTransliterate(surah, ayah);
  }
}
