// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import '../../data/theme/photon_mode_scope.dart';
import '../../theme.dart';
import '../preferences.dart';

abstract class PhotonModePersistent {
  FutureOr<PhotonMode> loadPhotonMode();

  FutureOr<void> savePhotonMode(PhotonMode value);
}

mixin PhotonModePreferences on Preferences implements PhotonModePersistent {
  static const String _key = 'photon_mode';

  @override
  FutureOr<PhotonMode> loadPhotonMode() async {
    final String? value = await loadString(_key);
    return value?.toPhotonMode() ?? QuranTheme.photonMode;
  }

  @override
  FutureOr<void> savePhotonMode(PhotonMode value) =>
    saveString(_key, value.toValue());
}

extension _StringExtension on String {
  PhotonMode toPhotonMode() {
    if (this == 'system') {
      return PhotonMode.system;
    }

    if (this == 'automatic') {
      return PhotonMode.automatic;
    }

    if (this == 'dark') {
      return PhotonMode.dark;
    }

    return QuranTheme.photonMode;
  }
}

extension _PhotonModeExtension on PhotonMode {
  String toValue() {
    switch(this) {
      case PhotonMode.system: return 'system';
      case PhotonMode.automatic: return 'automatic';
      case PhotonMode.dark: return 'dark';
      case PhotonMode.light: return 'light';
    }
  }
}
