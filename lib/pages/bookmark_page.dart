// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:quran_app/provider/bookmark.dart';

import '../widgets/annotation.dart';
import '../widgets/change_font_size_menu.dart';
import '../widgets/draggable_menu.dart';
import '../widgets/pop_up_menu.dart';
import '../widgets/translation.dart';
import '../widgets/transliteration.dart';
import 'quran_drawer.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({ super.key });

  @override
  Widget build(BuildContext context) {
    final List<Location> locations = Bookmark.of(context).locations;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Penanda'),
      ),
      drawer: const QuranDrawer(),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (BuildContext context, int index) {
          final Location location = locations[index];

          return _SurahItem(
            surah: location.surah,
            ayah: location.ayah,
          );
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
      leading: Text('($surah:$ayah)'),
      title: Column(
        children: <Widget>[
          _TransliterateMenu(
            surah: surah,
            ayah: ayah,
            child: Transliteration(surah: surah, ayah: ayah),
          ),
          Translation(surah: surah, ayah: ayah),
        ],
      ),
      subtitle: Annotation(surah: surah, ayah: ayah),
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
                  children: const <Widget>[
                    ChangeFontSizeMenu(),
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
