// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import 'translation_scope.dart';
import 'visibility_mixin.dart';

export '../finder_mixin.dart';

mixin TranslationMixin on VisibilityMixin {
  bool translationVisible(BuildContext context) => visible<TranslationScope>(context);
  void translationToggle(BuildContext context) => toggle<TranslationScope>(context);
}
