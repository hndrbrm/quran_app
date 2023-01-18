// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../data.dart';
import 'draggable_menu.dart';
import 'pop_up_menu.dart';

class FontSizeMenu<T extends FontSizeScopeBase> extends StatelessWidget {
  const FontSizeMenu({
    super.key,
    required this.data,
  });

  final T Function(BuildContext context) data;

  @override
  Widget build(BuildContext context) {
    return PopUpMenu(
      menuBuilder: (TapUpDetails details) {
        return DraggableMenu(
          left: details.globalPosition.dx,
          top: details.globalPosition.dy,
          child: _FontSizeSlider<T>(data),
        );
      },
      child: const Text('Ubah Ukuran...'),
    );
  }
}

class _FontSizeSlider<T extends FontSizeScopeBase> extends StatelessWidget {
  const _FontSizeSlider(this.data);

  final T Function(BuildContext context) data;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('Ukuran Font ${data(context).fontSize}'),
          Slider(
            min: 4.0,
            max: 96.0,
            value: data(context).fontSize,
            onChanged: (double value) {
              final newFontSize = double.parse(value.toStringAsFixed(2));
              data(context).fontSize = newFontSize;
            },
          ),
        ],
      ),
    );
  }
}
