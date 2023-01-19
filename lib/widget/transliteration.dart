// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../data/font_size/transliteration_size_scope.dart';
import '../quran/location.dart';
import '../quran/quran.dart';

class Transliteration extends StatelessWidget {
  const Transliteration({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  Widget build(BuildContext context) {
    final String transliterate = Quran.instance.getAyahTransliterate(location);

    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Text(
        '$transliterate ${location.ayah.toArabic()}',
        textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: TransliterationSizeScope.watchOf(context).fontSize,
        ),
      ),
    );
  }
}

extension _NumberToArabic on num {
  static const Map<String, String> mapper = <String, String>{
    '0': '\u0660',
    '1': '\u0661',
    '2': '\u0662',
    '3': '\u0663',
    '4': '\u0664',
    '5': '\u0665',
    '6': '\u0666',
    '7': '\u0667',
    '8': '\u0668',
    '9': '\u0669',
  };

  String toArabic() {
    final String number = toString();
    final StringBuffer buffer = StringBuffer();

    for (int i = 0; i < number.length; i++) {
      buffer.write(mapper[number[i]] ?? number[i]);
    }

    return buffer.toString();
  }
}
