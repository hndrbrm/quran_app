// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../data/bookmark/groups_scope.dart';
import '../data/bookmark/locations_scope.dart';
import '../data/font_size/translation_size_scope.dart';
import '../data/font_size/transliteration_size_scope.dart';
import '../quran/quran.dart';
import '../widgets/annotation.dart';
import '../widgets/draggable_menu.dart';
import '../widgets/font_size_menu.dart';
import '../widgets/pop_up_menu.dart';
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
      child: child,
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
                    FontSizeMenu<TransliterationSizeScope>(
                      data: (BuildContext context) {
                        return TransliterationSizeScope.watchOf(context);
                      },
                    ),
                    _BookmarkMenu(surah: surah, ayah: ayah),
                  ],
                ),
              ),
            ),
          ),
        );
      },
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
                    FontSizeMenu<TranslationSizeScope>(
                      data: (BuildContext context) {
                        return TranslationSizeScope.watchOf(context);
                      },
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
    return PopUpMenu(
      menuBuilder: (TapUpDetails details) {
        return DraggableMenu(
          left: details.globalPosition.dx,
          top: details.globalPosition.dy,
          child: _GroupsMenu(
            location: Location(surah, ayah),
          ),
        );
      },
      child: const Text('Tandai...'),
    );
  }
}

class _GroupsMenu extends StatelessWidget {
  const _GroupsMenu({
    required this.location,
  });

  final Location location;

  @override
  Widget build(BuildContext context) {
    final List<String> groups = GroupsScope.watchOf(context).groups;

    return Card(
      child:  LimitedBox(
        maxWidth: MediaQuery.of(context).size.width * 0.50,
        maxHeight: MediaQuery.of(context).size.height * 0.50,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: groups.length,
          itemBuilder: (BuildContext context, int index) {
            return _GroupsItem(
              group: groups[index],
              location: location,
            );
          },
        ),
      ),
    );
  }
}

class _GroupsItem extends StatelessWidget {
  const _GroupsItem({
    required this.group,
    required this.location,
  });

  final String group;
  final Location location;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(group),
      onTap: () {
        LocationsScope.readOf(context).addLocation(group, location);
        Navigator.of(context).pop();
      },
    );
  }
}
