// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../provider/bookmark.dart';
import '../provider/surah_font_size.dart';
import '../quran/quran.dart';
import '../widgets/draggable_menu.dart';
import '../widgets/pop_up_menu.dart';
import '../widgets/rounded_ink_well.dart';

class SurahPage extends StatelessWidget {
  const SurahPage({ required this.surah, super.key });

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

          return ListTile(
            leading: Text('$ayah'),
            title: Column(
              children: <Widget>[
                _Transliteration(surah: surah, ayah: ayah),
                _Translation(surah: surah, ayah: ayah),
              ],
            ),
            subtitle: _Annotation(surah: surah, ayah: ayah),
          );
        },
      ),
    );
  }
}

class _TransliterateMenu extends StatelessWidget {
  const _TransliterateMenu({
    required this.surah,
    required this.ayah,
    required this.child,
  });

  final int surah;
  final int ayah;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return PopUpMenu(
      menuBuilder: (TapUpDetails details) {
        return DraggableMenu(
          left: details.globalPosition.dx,
          top: details.globalPosition.dy,
          child: Card(
            child: IntrinsicWidth(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const _ChangeFontSizeMenu(),
                    _BookmarkMenu(surah: surah, ayah: ayah),
                  ],
                ),
              ),
            ),
          ),
        );
      },
      child: child,
    );
  }
}

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
              SurahFontSize.of(context).fontSize = double.parse(value.toStringAsFixed(2));
            },
          ),
        ],
      ),
    );
  }
}

class _ChangeFontSizeMenu extends StatelessWidget {
  const _ChangeFontSizeMenu();

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

class _BookmarkMenu extends StatelessWidget {
  const _BookmarkMenu({
    required this.surah,
    required this.ayah,
  });

  final int surah;
  final int ayah;

  @override
  Widget build(BuildContext context) {
    return RoundedInkWell(
      child: const Padding(
        padding: EdgeInsets.all(4.0),
        child: Text('Tandai'),
      ),
      onTap: () {
        final Location location = Location(surah, ayah);
        Bookmark.of(context).location = location;
        Navigator.of(context).pop();
      },
    );
  }
}

class _Transliteration extends StatelessWidget {
  const _Transliteration({
    required this.surah,
    required this.ayah,
  });

  final int surah;
  final int ayah;

  @override
  Widget build(BuildContext context) {
    final String transliterate = Quran.instance.getAyahTransliterate(surah, ayah);

    return _TransliterateMenu(
      surah: surah,
      ayah: ayah,
      child: Align(
        alignment: AlignmentDirectional.centerEnd,
        child: Text(
          '$transliterate ${ayah.toArabic()}',
          textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: SurahFontSize.of(context).fontSize,
          ),
        ),
      ),
    );
  }
}

class _Translation extends StatelessWidget {
  const _Translation({
    required this.surah,
    required this.ayah,
  });

  final int surah;
  final int ayah;

  @override
  Widget build(BuildContext context) {
    final String translate = Quran.instance.getAyahTranslate(surah, ayah);

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(translate),
    );
  }
}

class _Annotation extends StatelessWidget {
  const _Annotation({
    required this.surah,
    required this.ayah,
  });

  final int surah;
  final int ayah;

  @override
  Widget build(BuildContext context) {
    final String annotation = Quran.instance.getAyahAnnotation(surah, ayah);

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(annotation),
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
