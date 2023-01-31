// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'data/initialize_binder.dart';
import 'singleton.dart';

mixin LanguageBinding on SingletonBase, InitializeBinder {
  @override
  void initialize() {
    super.initialize();
    _instance = this;
  }

  static LanguageBinding get instance => SingletonBase.checkInstance(_instance);
  static LanguageBinding? _instance;

  static AppLocalizations get local {
    assert(() {
      if (_local == null) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('Cannot found $AppLocalizations instances.'),
          ErrorDescription('The $AppLocalizations instance has not been set.'),
          ErrorHint('Use $LanguageBinding.local to set the instance.'),
        ]);
      }
      return true;
    }());
    return _local!;
  }
  static AppLocalizations? _local;
  static set local(AppLocalizations? value) => _local = value;
}
