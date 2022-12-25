// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../data/bookmark.dart';
import '../data/translation_size.dart';
import '../data/transliteration_size.dart';
import '../quran/quran.dart';
import '../widgets/annotation.dart';
import '../widgets/draggable_menu.dart';
import '../widgets/font_size_menu.dart';
import '../widgets/pop_up_menu.dart';
import '../widgets/rounded_ink_well.dart';
import '../widgets/translation.dart';
import '../widgets/transliteration.dart';

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

          return _SurahItem(surah: surah, ayah: ayah);
        },
      ),
    );
  }
}

class _SurahItem extends StatelessWidget {
  const _SurahItem({
    required this.surah,
    required this.ayah,
  });

  final int surah;
  final int ayah;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('$ayah'),
      title: Column(
        children: <Widget>[
          _TransliterationMenu(
            surah: surah,
            ayah: ayah,
            child: Transliteration(surah: surah, ayah: ayah),
          ),
          _TranslationMenu(
            surah: surah,
            ayah: ayah,
            child: Translation(surah: surah, ayah: ayah),
          ),
        ],
      ),
      subtitle: Annotation(surah: surah, ayah: ayah),
    );
  }
}

class _TransliterationMenu extends StatelessWidget {
  const _TransliterationMenu({
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
                    FontSizeMenu(
                      data: (context) => TransliterationSize.of(context),
                    ),
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

class _TranslationMenu extends StatelessWidget {
  const _TranslationMenu({
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
                    FontSizeMenu(
                      data: (context) => TranslationSize.of(context),
                    ),
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
