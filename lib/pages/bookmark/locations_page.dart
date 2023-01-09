// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:quran_app/data/bookmark.dart';

import '../../data/translation_size.dart';
import '../../data/transliteration_size.dart';
import '../../widgets/annotation.dart';
import '../../widgets/draggable_menu.dart';
import '../../widgets/font_size_menu.dart';
import '../../widgets/pop_up_menu.dart';
import '../../widgets/translation.dart';
import '../../widgets/transliteration.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({
    super.key,
    required this.group,
  });

  final String group;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(group),
      ),
      body: _LocationsList(group),
    );
  }
}

class _LocationsList extends StatelessWidget {
  const _LocationsList(this.group);

  final String group;

  @override
  Widget build(BuildContext context) {
    final List<Location> locations = LocationsScope.watchOf(context).locations[group] ?? [];

    if (locations.isEmpty) {
      return const Center(child: Text('Belum ada bookmark'));
    }

    return ListView.builder(
      itemCount: locations.length,
      itemBuilder: (BuildContext context, int index) {
        return _SurahItem(
          surah: locations[index].surah,
          ayah: locations[index].ayah,
        );
      },
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
