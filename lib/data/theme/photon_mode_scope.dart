// Copyright 2022. Please see the AUTHORS file for details.
// All rights reserved. Use of this source code is governed
// by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../persistent/preferences.dart';
import '../../persistent/theme/theme_mode.dart';
import '../../theme.dart';
import '../initialize_binder.dart';

enum PhotonMode {
  system,
  automatic,
  dark,
  light,
}

class PhotonModeScope
  extends InheritedNotifier<ValueNotifier<PhotonMode>>
  with InitializeBinder, Preferences, PhotonModePreferences, _PhotonMode
{
  PhotonModeScope({
    super.key,
    required super.child,
  }) : super(notifier: ValueNotifier<PhotonMode>(QuranTheme.photonMode));

  @override
  ValueNotifier<PhotonMode> get notifier => super.notifier!;
}

mixin _PhotonMode on InitializeBinder, PhotonModePreferences {
  ValueNotifier<PhotonMode> get notifier;

  PhotonMode get photonMode => notifier.value;
  set photonMode(PhotonMode value) {
    savePhotonMode(value);
    notifier.value = value;
  }

  @override
  void initialize() {
    super.initialize();

    void notify(PhotonMode? photonMode) {
      if (photonMode != null) {
        notifier.value = photonMode;
      }
    }

    final FutureOr<PhotonMode> photonMode = loadPhotonMode();
    if (photonMode is PhotonMode) {
      notify(photonMode);
    } else {
      photonMode.then((PhotonMode themeMode) => notify(themeMode));
    }
  }

  void nextPhotonMode() {
    switch (photonMode) {
      case PhotonMode.system:
        photonMode = PhotonMode.automatic;
        break;
      case PhotonMode.automatic:
        photonMode = PhotonMode.dark;
        break;
      case PhotonMode.dark:
        photonMode = PhotonMode.light;
        break;
      case PhotonMode.light:
        photonMode = PhotonMode.system;
        break;
    }
  }
}
