// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'package:flutter/material.dart';

import '../finder_mixin.dart';
import 'photon_mode_scope.dart';

export '../finder_mixin.dart';

mixin ThemeModeMixin on FinderMixin {
  ThemeMode watchThemeMode(BuildContext context) =>
    watch<PhotonModeScope>(context).photonMode.toThemeMode();
}

extension _PhotonModeExtension on PhotonMode {
  ThemeMode toThemeMode() {
    switch (this) {
      case PhotonMode.system: return ThemeMode.system;
      case PhotonMode.automatic:
        int nowHour = DateTime.now().hour;
        bool isDarkMode = nowHour <= 6 || nowHour >= 20;
        return isDarkMode ? ThemeMode.dark : ThemeMode.light;
      case PhotonMode.dark: return ThemeMode.dark;
      case PhotonMode.light: return ThemeMode.light;
    }
  }
}
