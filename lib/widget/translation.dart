// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../data/font_size/translation_size_scope.dart';
import '../quran.dart';

class Translation extends StatelessWidget {
  const Translation({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  Widget build(BuildContext context) {
    final String translate = Quran.instance.getAyahTranslate(location);

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        translate,
        style: TextStyle(
          fontSize: TranslationSizeScope.watchOf(context).fontSize,
        ),
      ),
    );
  }
}
