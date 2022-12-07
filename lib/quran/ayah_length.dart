// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'ayah_transliterate.dart';
import 'quran.dart';

mixin AyahLength on Ayah {
  int getLength(int surah) => 0;
}

mixin FatihahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 1) {
      return FatihahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}
