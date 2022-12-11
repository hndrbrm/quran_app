// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../quran/quran.dart';

class Surah extends StatelessWidget {
  const Surah(this.surah, { super.key });

  final int surah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Quran.instance.getLatin(surah)),
      ),
      body: ListView.builder(
        itemCount: Quran.instance.getLength(surah),
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Column(
              children: <Widget>[
                Text(
                  '${Quran.instance.getAyahTransliterate(surah, index + 1)} ${(index + 1).toArabic()}',
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  Quran.instance.getAyahTranslate(surah, index + 1),
                ),
              ],
            ),
            subtitle: Text(Quran.instance.getAyahAnnotation(surah, index + 1)),
          );
        },
      ),
    );
  }
}

extension NumberToArabic on num {
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
