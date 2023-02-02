// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../data/finder_mixin.dart';
import '../../data/font_size/font_size_base.dart';
import '../../language.dart';
import '../draggable_menu.dart';
import '../pop_up_menu.dart';

class FontSizeMenu<T extends FontSizeScopeBase> extends StatelessWidget {
  const FontSizeMenu({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return PopUpMenu(
      menuBuilder: (TapUpDetails details) {
        return DraggableMenu(
          left: details.globalPosition.dx,
          top: details.globalPosition.dy,
          child: _FontSizeSlider<T>(),
        );
      },
      child: Text(title),
    );
  }
}

class _FontSizeSlider<T extends FontSizeScopeBase>
  extends StatelessWidget
  with FinderMixin
{
  const _FontSizeSlider();

  @override
  Widget build(BuildContext context) {
    final T data = watch<T>(context);

    return Card(
      child: Column(
        children: <Widget>[
          Text('${LanguageBinding.local.fontSize} ${data.fontSize}'),
          Slider(
            min: 4.0,
            max: 96.0,
            value: data.fontSize,
            onChanged: (double value) {
              final newFontSize = double.parse(value.toStringAsFixed(2));
              data.fontSize = newFontSize;
            },
          ),
        ],
      ),
    );
  }
}
