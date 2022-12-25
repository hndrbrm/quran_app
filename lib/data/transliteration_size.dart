// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

import '../persistent/transliteration_size.dart';

class TransliterationSize extends InheritedWidget {
  const TransliterationSize({
    super.key,
    this.fontSize,
    required this.setFontSize,
    required super.child,
  });

  final double? fontSize;
  final void Function(double? fontSize) setFontSize;

  set fontSize(double? fontSize) => setFontSize(fontSize);

  static TransliterationSize of(BuildContext context) {
    final TransliterationSize? result =
      context.dependOnInheritedWidgetOfExactType<TransliterationSize>();
    assert(result != null, 'No TransliterationSize found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(TransliterationSize oldWidget) {
    return fontSize != oldWidget.fontSize;
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DoubleProperty('fontSize', fontSize));
  }
}

class TransliterationSizeData extends StatefulWidget {
  const TransliterationSizeData({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<TransliterationSizeData> createState() => _TransliterationSizeDataState();
}

class _TransliterationSizeDataState extends State<TransliterationSizeData> with
  TransliterationSizePreferences
{
  static const double _defaultFontSize = 14.0;

  double? _fontSize;

  @override
  void initState() {
    super.initState();

    () async {
      _fontSize = await loadTransliterationSize() ?? _defaultFontSize;
      if (mounted) {
        setState(() {});
      }
    }();
  }

  @override
  Widget build(BuildContext context) {
    return TransliterationSize(
      fontSize: _fontSize,
      setFontSize: (double? fontSize) {
        if (fontSize != _fontSize) {
          setState(() => _fontSize = fontSize);
          saveTransliterationSize(fontSize);
        }
      },
      child: widget.child,
    );
  }
}
