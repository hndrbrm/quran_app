// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class FontSize extends InheritedWidget {
  const FontSize({
    super.key,
    this.fontSize,
    required this.setFontSize,
    required super.child,
  });

  final double? fontSize;
  final void Function(double? fontSize) setFontSize;

  set fontSize(double? fontSize) => setFontSize(fontSize);

  @override
  bool updateShouldNotify(FontSize oldWidget) {
    return fontSize != oldWidget.fontSize;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('fontSize', fontSize));
  }
}
