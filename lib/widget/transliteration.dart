// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../data/font_size/transliteration_size_mixin.dart';
import '../mixin/none/number_mixin.dart';
import '../quran/location.dart';
import '../quran/quran.dart';

class Transliteration
  extends StatelessWidget
  with FinderMixin, TransliterationSizeMixin, NumberMixin
{
  const Transliteration({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  Widget build(BuildContext context) {
    final String transliterate = QuranBinding.instance.getAyahTransliterate(location);

    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Text(
        '$transliterate ${toArabic(location.ayah)}',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: fontSize(context),
        ),
      ),
    );
  }
}
