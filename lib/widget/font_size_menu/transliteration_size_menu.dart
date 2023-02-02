// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:quran_app/language.dart';

import '../../data/font_size/transliteration_size_scope.dart';
import 'font_size_menu.dart';

export '../../data/font_size/transliteration_size_scope.dart' show TransliterationSizeScope;
export 'font_size_menu.dart' show FontSizeMenu;

class TransliterationSizeMenu extends FontSizeMenu<TransliterationSizeScope> {
  TransliterationSizeMenu({ super.key })
    : super(title: '${LanguageBinding.local.changeTransliterationSize}...');
}
