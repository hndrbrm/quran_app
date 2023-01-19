// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../data/bookmark/locations_scope.dart';
import '../../data/font_size/translation_size_scope.dart';
import '../../data/font_size/transliteration_size_scope.dart';
import '../../mixin/none/bookmark_mixin.dart';
import '../../quran/location.dart';
import '../../routes.dart';
import '../../widget/annotation.dart';
import '../../widget/draggable_menu.dart';
import '../../widget/font_size_menu.dart';
import '../../widget/pop_up_menu.dart';
import '../../widget/rounded_ink_well.dart';
import '../../widget/translation.dart';
import '../../widget/transliteration.dart';

class LocationsPage extends StatelessWidget with BookmarkMixin {
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
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.delete_forever),
            onPressed: () => removeGroupThenPop(context, group),
          ),
        ],
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
    final List<Location> locations =
      LocationsScope.watchOf(context).locations[group] ??
      List.empty();

    if (locations.isEmpty) {
      return const Center(child: Text('Belum ada bookmark'));
    }

    return ListView.builder(
      itemCount: locations.length,
      itemBuilder: (BuildContext context, int index) {
        return _SurahItem(group: group, location: locations[index]);
      },
    );
  }
}

class _SurahItem extends StatelessWidget {
  const _SurahItem({
    required this.group,
    required this.location,
  });

  final String group;
  final Location location;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('(${location.surah}:${location.ayah})'),
      title: Column(
        children: <Widget>[
          _TransliterationMenu(
            group: group,
            location: location,
            child: Transliteration(location: location),
          ),
          _TranslationMenu(
            group: group,
            location: location,
            child: Translation(location: location),
          ),
        ],
      ),
      subtitle: Annotation(location: location),
    );
  }
}

class _TransliterationMenu extends StatelessWidget {
  const _TransliterationMenu({
    required this.group,
    required this.location,
    required this.child,
  });

  final String group;
  final Location location;
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
                    _SurahMenu(location),
                    _RemoveMenu(group: group, location: location),
                    FontSizeMenu<TransliterationSizeScope>(
                      data: (BuildContext context) {
                        return TransliterationSizeScope.watchOf(context);
                      },
                    ),
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
    required this.group,
    required this.location,
    required this.child,
  });

  final String group;
  final Location location;
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
                    _SurahMenu(location),
                    _RemoveMenu(group: group, location: location),
                    FontSizeMenu<TranslationSizeScope>(
                      data: (BuildContext context) {
                        return TranslationSizeScope.watchOf(context);
                      },
                    ),
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

class _SurahMenu extends StatelessWidget {
  const _SurahMenu(this.location);

  final Location location;

  @override
  Widget build(BuildContext context) {
    return RoundedInkWell(
      child: const Text('Go to Surah'),
      onTap: () => SurahRoute.pushNamed(context, location.surah, location.ayah),
    );
  }
}

class _RemoveMenu extends StatelessWidget {
  const _RemoveMenu({
    required this.group,
    required this.location,
  });

  final String group;
  final Location location;

  @override
  Widget build(BuildContext context) {
    return RoundedInkWell(
      child: const Text('Remove'),
      onTap: () {
        LocationsScope.readOf(context).removeLocation(group, location);
        Navigator.of(context).pop();
      },
    );
  }
}
