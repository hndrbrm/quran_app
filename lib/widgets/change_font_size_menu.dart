// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../provider/surah_font_size.dart';
import 'draggable_menu.dart';
import 'pop_up_menu.dart';

class _ChangeFontSizeSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Text('Ukuran Font ${SurahFontSize.of(context).fontSize}'),
          Slider(
            min: 4.0,
            max: 96.0,
            value: SurahFontSize.of(context).fontSize!,
            onChanged: (double value) {
              final newFontSize = double.parse(value.toStringAsFixed(2));
              SurahFontSize.of(context).fontSize = newFontSize;
            },
          ),
        ],
      ),
    );
  }
}

class ChangeFontSizeMenu extends StatelessWidget {
  const ChangeFontSizeMenu({ super.key });

  @override
  Widget build(BuildContext context) {
    return PopUpMenu(
      menuBuilder: (TapUpDetails details) {
        return DraggableMenu(
          left: details.globalPosition.dx,
          top: details.globalPosition.dy,
          child: _ChangeFontSizeSlider(),
        );
      },
      child: const Text('Ubah Ukuran...'),
    );
  }
}
