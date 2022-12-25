// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'draggable_menu.dart';
import 'pop_up_menu.dart';

class _FontSizeSlider extends StatelessWidget {
  const _FontSizeSlider(this.object);

  final dynamic object;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('Ukuran Font ${object.fontSize}'),
          Slider(
            min: 4.0,
            max: 96.0,
            value: object.fontSize!,
            onChanged: (double value) {
              final newFontSize = double.parse(value.toStringAsFixed(2));
              object.fontSize = newFontSize;
            },
          ),
        ],
      ),
    );
  }
}

class FontSizeMenu extends StatelessWidget {
  const FontSizeMenu({
    super.key,
    required this.object,
  });

  final dynamic object;

  @override
  Widget build(BuildContext context) {
    return PopUpMenu(
      menuBuilder: (TapUpDetails details) {
        return DraggableMenu(
          left: details.globalPosition.dx,
          top: details.globalPosition.dy,
          child: _FontSizeSlider(object),
        );
      },
      child: const Text('Ubah Ukuran...'),
    );
  }
}
