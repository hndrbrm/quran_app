// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../data/bookmark/bookmark_mixin.dart';
import '../../data/bookmark/locations_mixin.dart';
import '../../data/font_size/transliteration_size_mixin.dart';
import '../../language.dart';
import '../../route/surah_route.dart';
import '../../widget/annotation.dart';
import '../../widget/draggable_menu.dart';
import '../../widget/font_size_menu/translation_size_menu.dart';
import '../../widget/font_size_menu/transliteration_size_menu.dart';
import '../../widget/pop_up_menu.dart';
import '../../widget/rounded_ink_well.dart';
import '../../widget/translation.dart';
import '../../widget/transliteration.dart';

class LocationsPage extends StatelessWidget with FinderMixin, BookmarkMixin {
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

class _LocationsList extends StatelessWidget with FinderMixin, LocationsMixin {
  const _LocationsList(this.group);

  final String group;

  @override
  Widget build(BuildContext context) {
    final List<Location> locations = this.locations(context, group);

    if (locations.isEmpty) {
      return Center(child: Text(LanguageBinding.local.emptyBookmark));
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

class _TransliterationMenu
  extends StatelessWidget
  with FinderMixin, TransliterationSizeMixin
{
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
                    TransliterationSizeMenu(),
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

class _TranslationMenu extends StatelessWidget with FinderMixin {
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
                    TranslationSizeMenu(),
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
      child: Text(LanguageBinding.local.goToSurah),
      onTap: () => SurahRoute.pushNamed(context, location.surah, location.ayah),
    );
  }
}

class _RemoveMenu extends StatelessWidget with FinderMixin, LocationsMixin {
  const _RemoveMenu({
    required this.group,
    required this.location,
  });

  final String group;
  final Location location;

  @override
  Widget build(BuildContext context) {
    return RoundedInkWell(
      child: Text(LanguageBinding.local.remove),
      onTap: () {
        removeLocation(context, group, location);
        Navigator.of(context).pop();
      },
    );
  }
}
