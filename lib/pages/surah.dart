// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../quran/quran.dart';
import '../widgets/draggable_menu.dart';
import '../widgets/pop_up_menu.dart';

class Surah extends StatelessWidget {
  const Surah({ required this.surah, super.key });

  final int surah;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Quran.instance.getLatin(surah)),
      ),
      body: ListView.builder(
        itemCount: Quran.instance.getLength(surah),
        itemBuilder: (BuildContext context, int index) {
          final int ayah = index + 1;
          final String transliterate = Quran.instance.getAyahTransliterate(surah, ayah);
          final String translate = Quran.instance.getAyahTranslate(surah, ayah);
          final String annotation = Quran.instance.getAyahAnnotation(surah, ayah);

          return ListTile(
            leading: Text('$ayah'),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                _TransliterateMenu(
                  child: Text(
                    '$transliterate ${ayah.toArabic()}',
                    textDirection: TextDirection.rtl,
                  ),
                ),
                Text(translate),
              ],
            ),
            subtitle: Text(annotation),
          );
        },
      ),
    );
  }
}

class _TransliterateMenu extends StatefulWidget {
  const _TransliterateMenu({ required this.child });

  final Widget child;

  @override
  State<_TransliterateMenu> createState() => _TransliterateMenuState();
}

class _TransliterateMenuState extends State<_TransliterateMenu> {
  @override
  Widget build(BuildContext context) {
    return PopUpMenu(
      menuBuilder: (TapUpDetails details) {
        return DraggableMenu(
          left: details.globalPosition.dx,
          top: details.globalPosition.dy,
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                _ChangeSizeMenu(),
              ],
            ),
          ),
        );
      },
      child: widget.child,
    );
  }
}

class _ChangeSizeMenu extends StatelessWidget {
  const _ChangeSizeMenu();

  @override
  Widget build(BuildContext context) {
    return PopUpMenu(
      menuBuilder: (TapUpDetails details) {
        return DraggableMenu(
          left: details.globalPosition.dx,
          top: details.globalPosition.dy,
          child: SizedBox(
            width: 100,
            height: 100,
            child: Card(
              child: Slider(
                min: 9.0,
                max: 24.0,
                value: 14.0,
                onChanged: (double value) {
                },
              ),
            ),
          ),
        );
      },
      child: const Padding(
        padding: EdgeInsets.all(4.0),
        child: Text('Ubah Ukuran...'),
      ),
    );
  }
}

extension _NumberToArabic on num {
  static const Map<String, String> mapper = <String, String>{
    '0': '\u0660',
    '1': '\u0661',
    '2': '\u0662',
    '3': '\u0663',
    '4': '\u0664',
    '5': '\u0665',
    '6': '\u0666',
    '7': '\u0667',
    '8': '\u0668',
    '9': '\u0669',
  };

  String toArabic() {
    final String number = toString();
    final StringBuffer buffer = StringBuffer();

    for (int i = 0; i < number.length; i++) {
      buffer.write(mapper[number[i]] ?? number[i]);
    }

    return buffer.toString();
  }
}
