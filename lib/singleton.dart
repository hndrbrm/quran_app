// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';

import 'data/initialize_binder.dart';
import 'language.dart';

abstract class SingletonBase with InitializeBinder {
  SingletonBase() {
    initialize();
  }

  @protected
  static T checkInstance<T extends SingletonBase>(T? instance) {
    assert(() {
      if (instance == null) {
        throw FlutterError.fromParts(<DiagnosticsNode>[
          ErrorSummary('Cannot found instances.'),
          ErrorDescription('Singleton is not instantiated yet.'),
          ErrorHint('Call $Singleton.ensureInitialized() to instantiate.'),
        ]);
      }
      return true;
    }());
    return instance!;
  }
}

class Singleton extends SingletonBase with LanguageBinding {
  static Singleton get instance => SingletonBase.checkInstance(_instance);
  static Singleton? _instance;

  static Singleton ensureInitialized() {
    _instance ??= Singleton();
    return _instance!;
  }
}
