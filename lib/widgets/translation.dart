// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../data/translation_size.dart';
import '../quran/quran.dart';

class Translation extends StatelessWidget {
  const Translation({
    super.key,
    required this.surah,
    required this.ayah,
  });

  final int surah;
  final int ayah;

  @override
  Widget build(BuildContext context) {
    final String translate = Quran.instance.getAyahTranslate(surah, ayah);

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        translate,
        style: TextStyle(
          fontSize: TranslationSize.of(context).fontSize,
        ),
      ),
    );
  }
}
