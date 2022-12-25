// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../persistent/translation_size.dart';
import 'font_size.dart';

class TranslationSize extends FontSize {
  const TranslationSize({
    super.key,
    super.fontSize,
    required super.setFontSize,
    required super.child,
  });

  static TranslationSize of(BuildContext context) {
    final TranslationSize? result =
      context.dependOnInheritedWidgetOfExactType<TranslationSize>();
    assert(result != null, 'No TranslationSize found in context');
    return result!;
  }
}

class TranslationSizeData extends StatefulWidget {
  const TranslationSizeData({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  State<TranslationSizeData> createState() => _TranslationSizeDataState();
}

class _TranslationSizeDataState extends State<TranslationSizeData> with
  TranslationSizePreferences
{
  static const double _defaultFontSize = 14.0;

  double? _fontSize;

  @override
  void initState() {
    super.initState();

    () async {
      _fontSize = await loadTranslationSize() ?? _defaultFontSize;
      if (mounted) {
        setState(() {});
      }
    }();
  }

  @override
  Widget build(BuildContext context) {
    return TranslationSize(
      fontSize: _fontSize,
      setFontSize: (double? fontSize) {
        if (fontSize != _fontSize) {
          setState(() => _fontSize = fontSize);
          saveTranslationSize(fontSize);
        }
      },
      child: widget.child,
    );
  }
}
