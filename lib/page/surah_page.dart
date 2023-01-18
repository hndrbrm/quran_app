// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../data.dart';
import '../mixin.dart';
import '../quran.dart';
import '../widget.dart';

class SurahPage extends StatelessWidget {
  const SurahPage({
    super.key,
    required this.surah,
    int? ayah,
  }) : ayah = ayah ?? 1;

  final int surah;
  final int ayah;

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey('center');
    final int total = Quran.instance.getLength(surah);

    return Scaffold(
      appBar: AppBar(
        title: Text(Quran.instance.getLatin(surah)),
      ),
      body: CustomScrollView(
        center: centerKey,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final Location location = Location(surah,  ayah - index - 1);
                return _SurahItem(location);
              },
              childCount: ayah - 1,
            ),
          ),
          SliverList(
            key: centerKey,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                final Location location = Location(surah,  ayah + index);
                return _SurahItem(location);
              },
              childCount: total - ayah + 1,
            ),
          ),
        ],
      ),
    );
  }
}

class _SurahItem extends StatelessWidget {
  const _SurahItem(this.location);

  final Location location;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text('${location.ayah}'),
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
      subtitle: _AnnotationMenu(
        child: Annotation(location: location),
      ),
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
                    FontSizeMenu<TransliterationSizeScope>(
                      data: (BuildContext context) {
                        return TransliterationSizeScope.watchOf(context);
                      },
                    ),
                    _BookmarkMenu(location),
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
                    _BookmarkMenu(location),
                    const _AnnotationToggle(
                      visible: false,
                      title: 'Show Annotation',
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

class _AnnotationMenu extends StatelessWidget {
  const _AnnotationMenu({ required this.child });

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
                    _AnnotationToggle(
                      visible: true,
                      title: 'Hide',
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

class _AnnotationToggle extends StatelessWidget {
  const _AnnotationToggle({
    required this.visible,
    required this.title
  });

  final bool visible;
  final String title;

  @override
  Widget build(BuildContext context) {
    if (AnnotationScope.watchOf(context).visible == visible) {
      return RoundedInkWell(
        onTap: () {
          AnnotationScope.readOf(context).toggle();
          Navigator.of(context).pop();
        },
        child: Text(title),
      );
    }

    return const SizedBox.shrink();
  }
}

class _BookmarkMenu extends StatelessWidget with BookmarkMixin {
  const _BookmarkMenu(this.location);

  final Location location;

  @override
  Widget build(BuildContext context) {
    const Widget child = Text('Tandai...');
    final List<String> groups = GroupsScope.watchOf(context).groups;

    if (groups.isEmpty) {
      return RoundedInkWell(
        child: child,
        onTap: () => createGroup(context).then(
          (String? group) {
            if (group != null) {
              _addLocation(context, group, location);
            }
          },
        ),
      );
    }

    return PopUpMenu(
      child: child,
      menuBuilder: (TapUpDetails details) {
        return DraggableMenu(
          left: details.globalPosition.dx,
          top: details.globalPosition.dy,
          child: _GroupsMenu(
            groups: groups,
            location: location,
          ),
        );
      },
    );
  }
}

class _GroupsMenu extends StatelessWidget {
  const _GroupsMenu({
    required this.location,
    required this.groups,
  }) : assert(groups.length > 0);

  final Location location;
  final List<String> groups;

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  LimitedBox(
        maxWidth: MediaQuery.of(context).size.width * 0.50,
        maxHeight: MediaQuery.of(context).size.height * 0.50,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: groups.length,
          itemBuilder: (BuildContext context, int index) {
            return _GroupsItem(group: groups[index], location: location);
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
      onTap: () => _addLocation(context, group, location),
    );
  }
}

void _addLocation(BuildContext context, String group, Location location) {
  LocationsScope.readOf(context).addLocation(group, location);
  Navigator.of(context).pop();
}
