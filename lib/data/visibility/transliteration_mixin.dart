// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import 'transliteration_scope.dart';
import 'visibility_mixin.dart';

export '../finder_mixin.dart';

mixin TransliterationMixin on VisibilityMixin {
  bool transliterationVisible(BuildContext context) => visible<TransliterationScope>(context);
  void transliterationToggle(BuildContext context) => toggle<TransliterationScope>(context);
}
