// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../mixin/none/number_mixin.dart';
import '../quran/location.dart';
import '../quran/quran.dart';

class TransliterationLafaz extends StatelessWidget with NumberMixin {
  const TransliterationLafaz({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> lafazs = Quran.instance.getAyahLafaz(location);

    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: Wrap(
        textDirection: TextDirection.rtl,
        spacing: 4.0,
        children: lafazs.map((e) {
          return _Envelope(
            transliteration: e.keys.first,
            translation: e.values.first,
          );
        }).toList(growable: false),
      ),
    );
  }
}

class _Envelope extends StatelessWidget {
  const _Envelope({
    required this.transliteration,
    required this.translation,
  });

  final String transliteration;
  final String translation;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: Colors.grey.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6.0),
        child: Column(
          children: <Widget>[
            Text(
              transliteration,
              textDirection: TextDirection.rtl,
            ),
            Text(translation),
          ],
        ),
      ),
    );
  }
}
