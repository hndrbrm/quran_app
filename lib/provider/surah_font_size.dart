// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class SurahFontSize extends InheritedWidget {
  const SurahFontSize({
    super.key,
    this.fontSize,
    required this.setFontSize,
    required super.child,
  });

  final double? fontSize;
  final void Function(double? value) setFontSize;

  set fontSize(double? value) => setFontSize(value);

  static SurahFontSize of(BuildContext context) {
    final SurahFontSize? result = context.dependOnInheritedWidgetOfExactType<SurahFontSize>();
    assert(result != null, 'No SurahFontSize found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(SurahFontSize oldWidget) {
    return fontSize != oldWidget.fontSize;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('fontSize', fontSize));
  }
}

class SurahFontSizeProvider extends StatefulWidget {
  const SurahFontSizeProvider({ super.key, required this.child });

  final Widget child;

  @override
  State<SurahFontSizeProvider> createState() => _SurahFontSizeProviderState();
}

class _SurahFontSizeProviderState extends State<SurahFontSizeProvider> {
  double? _fontSize = 14.0;

  @override
  Widget build(BuildContext context) {
    return SurahFontSize(
      fontSize: _fontSize,
      setFontSize: (double? fontSize) {
        setState(() {
          if (fontSize != _fontSize) {
            _fontSize = fontSize;
          }
        });
      },
      child: widget.child,
    );
  }
}
