// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../data/bookmark.dart';
import '../../data/translation_size.dart';
import '../../data/transliteration_size.dart';
import '../../widgets/annotation.dart';
import '../../widgets/font_size_menu.dart';
import '../../widgets/draggable_menu.dart';
import '../../widgets/pop_up_menu.dart';
import '../../widgets/rounded_ink_well.dart';
import '../../widgets/translation.dart';
import '../../widgets/transliteration.dart';
import '../quran_drawer.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penanda'),
      ),
      drawer: const QuranDrawer(),
      body: const _BookmarkList(),
    );
  }
}

class _BookmarkList extends StatelessWidget {
  const _BookmarkList();

  @override
  Widget build(BuildContext context) {
    final List<String> groups = GroupsScope.of(context).groups;

    if (groups.isEmpty) {
      return const _EmptyList();
    }

    return ListView.builder(
      itemCount: groups.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(groups[index]),
        );
      },
    );
  }
}

class _EmptyList extends StatelessWidget {
  const _EmptyList();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RoundedInkWell(
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Create Group'),
        ),
        onTap: () async {
          final GroupsScope gs = GroupsScope.of(context);
          final String group = await showDialog(
            context: context,
            builder: (BuildContext context) {
              final TextEditingController controller = TextEditingController();
              return AlertDialog(
                title: TextField(
                  controller: controller,
                  decoration: const InputDecoration(
                    labelText: 'Group Name',
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.of(context).pop(controller.text),
                    child: const Text('Ok'),
                  ),
                ],
              );
            },
          );
          gs.group = group;
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
