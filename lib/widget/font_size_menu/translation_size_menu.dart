// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import '../../data/font_size/translation_size_scope.dart';
import 'font_size_menu.dart';

export '../../data/font_size/translation_size_scope.dart' show TranslationSizeScope;
export 'font_size_menu.dart' show FontSizeMenu;

class TranslationSizeMenu extends FontSizeMenu<TranslationSizeScope> {
  const TranslationSizeMenu({ super.key })
    : super(title: 'Ubah Ukuran Terjemah...');
}
