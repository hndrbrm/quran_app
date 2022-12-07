// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';

import 'quran.dart';

mixin AyahTranslate on Ayah {
  @protected
  @mustCallSuper
  String getAyahTranslate(int surah, int ayah) => '';
}

mixin FatihahAyahTranslate on AyahTranslate {
  static const List ayahs = <String>[
    'Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang.',
    'Segala puji bagi Allah, Tuhan<sup>1)</sup> semesta alam',
    'Yang Maha Pengasih lagi Maha Penyayang,',
    'Pemilik hari Pembalasan.<sup>2)</sup>',
    'Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami memohon pertolongan.',
    'Bimbinglah kami ke jalan yang lurus,<sup>3)</sup>',
    '(yaitu) jalan orang-orang yang telah Engkau beri nikmat, bukan (jalan) mereka yang dimurkai dan bukan (pula jalan) orang-orang yang sesat.',
  ];

  @override
  String getAyahTranslate(int surah, int ayah) {
    if (surah == 1) {
      return ayahs[ayah - 1];
    }

    return super.getAyahTranslate(surah, ayah);
  }
}
