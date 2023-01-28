// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:quran_app/data/lafaz/lafaz_mixin.dart';

import '../data/annotation/annotation_mixin.dart';
import '../data/bookmark/bookmark_mixin.dart';
import '../data/bookmark/groups_mixin.dart';
import '../data/bookmark/locations_mixin.dart';
import '../data/font_size/translation_size_scope.dart';
import '../data/font_size/transliteration_size_scope.dart';
import '../quran/quran.dart';
import '../widget/annotation.dart';
import '../widget/draggable_menu.dart';
import '../widget/font_size_menu.dart';
import '../widget/pop_up_menu.dart';
import '../widget/rounded_ink_well.dart';
import '../widget/translation.dart';
import '../widget/transliteration.dart';
import '../widget/lafaz_card.dart';

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
          _LafazMenu(
            location: location,
            child: LafazCard(location: location),
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

class _TransliterationMenu extends StatelessWidget with FinderMixin {
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
                        return watch<TransliterationSizeScope>(context);
                      },
                    ),
                    _BookmarkMenu(location),
                    const _LafazToggle(
                      showWhenVisible: false,
                      title: 'Show Lafaz',
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

class _LafazMenu extends StatelessWidget with FinderMixin, LafazMixin {
  const _LafazMenu({
    required this.location,
    required this.child,
  });

  final Location location;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible(context),
      child: PopUpMenu(
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
                    children: const <Widget>[
                      _LafazToggle(
                        showWhenVisible: true,
                        title: 'Hide',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _TranslationMenu
  extends StatelessWidget
  with FinderMixin, _AnnotationMixin
{
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
                        return watch<TranslationSizeScope>(context);
                      },
                    ),
                    _BookmarkMenu(location),
                    if (hasAnnotation(location))
                    const _AnnotationToggle(
                      showWhenVisible: false,
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

class _AnnotationMenu extends StatelessWidget with FinderMixin, AnnotationMixin {
  const _AnnotationMenu({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible(context),
      child: PopUpMenu(
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
                        showWhenVisible: true,
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
      ),
    );
  }
}

class _AnnotationToggle
  extends StatelessWidget
  with FinderMixin, AnnotationMixin
{
  const _AnnotationToggle({
    required this.showWhenVisible,
    required this.title,
  });

  final bool showWhenVisible;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible(context) == showWhenVisible,
      child: RoundedInkWell(
        onTap: () {
          toggle(context);
          Navigator.of(context).pop();
        },
        child: Text(title),
      ),
    );
  }
}

class _LafazToggle
  extends StatelessWidget
  with FinderMixin, LafazMixin
{
  const _LafazToggle({
    required this.showWhenVisible,
    required this.title,
  });

  final bool showWhenVisible;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible(context) == showWhenVisible,
      child: RoundedInkWell(
        onTap: () {
          toggle(context);
          Navigator.of(context).pop();
        },
        child: Text(title),
      ),
    );
  }
}

class _BookmarkMenu
  extends StatelessWidget
  with FinderMixin, BookmarkMixin, GroupsMixin, LocationsMixin, _LocationsMixin
{
  const _BookmarkMenu(this.location);

  final Location location;

  @override
  Widget build(BuildContext context) {
    const Widget child = Text('Tandai...');
    final List<String> groups = this.groups(context);

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

class _GroupsItem
  extends StatelessWidget
  with FinderMixin, LocationsMixin, _LocationsMixin
{
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

mixin _LocationsMixin on FinderMixin, LocationsMixin {
  void _addLocation(BuildContext context, String group, Location location) {
    addLocation(context, group, location);
    Navigator.of(context).pop();
  }
}

mixin _AnnotationMixin {
  bool hasAnnotation(Location location) =>
    Quran.instance.getAyahAnnotation(location).isNotEmpty;
}
