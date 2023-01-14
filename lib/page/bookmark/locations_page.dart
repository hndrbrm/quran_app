// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../data.dart';
import '../../mixin/bookmark_mixin.dart';
import '../../quran/location.dart';
import '../../routes.dart';
import '../../widget.dart';

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
    final List<Location> locations = LocationsScope.watchOf(context).locations[group] ?? [];

    if (locations.isEmpty) {
      return const Center(child: Text('Belum ada bookmark'));
    }

    return ListView.builder(
      itemCount: locations.length,
      itemBuilder: (BuildContext context, int index) {
        return _SurahItem(locations[index]);
      },
    );
  }
}

class _SurahItem extends StatelessWidget {
  const _SurahItem(this.location);

  final Location location;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('(${location.surah}:${location.ayah})'),
      title: Column(
        children: <Widget>[
          _TransliterationMenu(
            location: location,
            child: Transliteration(location: location),
          ),
          _TranslationMenu(
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
    required this.location,
    required this.child,
  });

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
    required this.location,
    required this.child,
  });

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
