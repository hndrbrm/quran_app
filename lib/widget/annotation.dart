// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../quran/quran.dart';

class Annotation extends StatelessWidget {
  const Annotation({
    super.key,
    required this.surah,
    required this.ayah,
  });

  final int surah;
  final int ayah;

  @override
  Widget build(BuildContext context) {
    final String annotation = Quran.instance.getAyahAnnotation(surah, ayah);

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(annotation),
    );
  }
}
