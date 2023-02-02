// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../data/bookmark/bookmark_mixin.dart';
import '../data/bookmark/groups_mixin.dart';
import '../data/bookmark/locations_mixin.dart';
import '../data/visibility/annotation_mixin.dart';
import '../data/visibility/annotation_scope.dart';
import '../data/visibility/lafaz_mixin.dart';
import '../data/visibility/lafaz_scope.dart';
import '../data/visibility/translation_mixin.dart';
import '../data/visibility/translation_scope.dart';
import '../data/visibility/transliteration_mixin.dart';
import '../data/visibility/transliteration_scope.dart';
import '../data/visibility/visibility_mixin.dart';
import '../data/visibility/visibility_scope.dart';
import '../language.dart';
import '../quran/quran.dart';
import '../widget/annotation.dart';
import '../widget/draggable_menu.dart';
import '../widget/font_size_menu/translation_size_menu.dart';
import '../widget/font_size_menu/transliteration_size_menu.dart';
import '../widget/lafaz_card.dart';
import '../widget/pop_up_menu.dart';
import '../widget/rounded_ink_well.dart';
import '../widget/translation.dart';
import '../widget/transliteration.dart';

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
    final int total = QuranBinding.instance.getLength(surah);

    return Scaffold(
      appBar: AppBar(
        title: Text(QuranBinding.instance.getLatin(surah)),
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
          _AnnotationMenu(
            location: location,
            child: Annotation(location: location),
          ),
          const _EmptyMenu(),
        ],
      ),
    );
  }
}

class _Menu extends StatelessWidget {
  const _Menu({
    required this.child,
    required this.menus,
  });

  final Widget child;
  final List<Widget> menus;

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
                  children: menus,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _EmptyMenu
  extends StatelessWidget
  with
    FinderMixin,

    VisibilityMixin, TransliterationMixin, LafazMixin, TranslationMixin,
    AnnotationMixin
{
  const _EmptyMenu();

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:
        !transliterationVisible(context) &&
        !lafazVisible(context) &&
        !translationVisible(context) &&
        !annotationVisible(context),
      child: RoundedInkWell(
        onTap: () => transliterationToggle(context),
        child: Align(
          alignment: AlignmentDirectional.centerStart,
          child: Text(LanguageBinding.local.showTransliteration),
        ),
      ),
    );
  }
}

class _TransliterationMenu
  extends StatelessWidget
  with FinderMixin, _AnnotationMixin, VisibilityMixin, TransliterationMixin
{
  const _TransliterationMenu({
    required this.location,
    required this.child,
  });

  final Location location;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: transliterationVisible(context),
      child: _Menu(
        menus: <Widget>[
          TransliterationSizeMenu(),
          _BookmarkMenu(location),
          _Toggle<LafazScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showLafaz,
          ),
          _Toggle<TranslationScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showTranslation,
          ),
          if (hasAnnotation(location))
          _Toggle<AnnotationScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showAnnotation,
          ),
          _Toggle<TransliterationScope>(
            showWhenVisible: true,
            title: LanguageBinding.local.hideTransliteration,
          ),
        ],
        child: child,
      ),
    );
  }
}

class _LafazMenu
  extends StatelessWidget
  with FinderMixin, VisibilityMixin, LafazMixin, _AnnotationMixin
{
  const _LafazMenu({
    required this.location,
    required this.child,
  });

  final Location location;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: lafazVisible(context),
      child: _Menu(
        menus: <Widget>[
          TransliterationSizeMenu(),
          TranslationSizeMenu(),
          _BookmarkMenu(location),
          _Toggle<TransliterationScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showTransliteration,
          ),
          _Toggle<TranslationScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showTranslation,
          ),
          if (hasAnnotation(location))
          _Toggle<AnnotationScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showAnnotation,
          ),
          _Toggle<LafazScope>(
            showWhenVisible: true,
            title: LanguageBinding.local.hideLafaz,
          ),
        ],
        child: child,
      ),
    );
  }
}

class _TranslationMenu
  extends StatelessWidget
  with FinderMixin, _AnnotationMixin, VisibilityMixin, TranslationMixin
{
  const _TranslationMenu({
    required this.location,
    required this.child,
  });

  final Location location;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: translationVisible(context),
      child: _Menu(
        menus: <Widget>[
          TranslationSizeMenu(),
          _BookmarkMenu(location),
          _Toggle<TransliterationScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showTransliteration,
          ),
          _Toggle<LafazScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showLafaz,
          ),
          if (hasAnnotation(location))
          _Toggle<AnnotationScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showAnnotation,
          ),
          _Toggle<TranslationScope>(
            showWhenVisible: true,
            title: LanguageBinding.local.hideTranslation,
          ),
        ],
        child: child,
      ),
    );
  }
}

class _AnnotationMenu
  extends StatelessWidget
  with FinderMixin, VisibilityMixin, AnnotationMixin, _AnnotationMixin
{
  const _AnnotationMenu({
    required this.location,
    required this.child,
  });

  final Location location;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: annotationVisible(context) && hasAnnotation(location),
      child: _Menu(
        menus: <Widget>[
          _Toggle<TransliterationScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showTransliteration,
          ),
          _Toggle<LafazScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showLafaz,
          ),
          _Toggle<TranslationScope>(
            showWhenVisible: false,
            title: LanguageBinding.local.showTranslation,
          ),
          _Toggle<AnnotationScope>(
            showWhenVisible: true,
            title: LanguageBinding.local.hideAnnotation,
          ),
        ],
        child: child,
      ),
    );
  }
}

class _Toggle<T extends VisibilityScope>
  extends StatelessWidget
  with FinderMixin, VisibilityMixin
{
  const _Toggle({
    required this.showWhenVisible,
    required this.title,
  });

  final bool showWhenVisible;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible<T>(context) == showWhenVisible,
      child: RoundedInkWell(
        onTap: () {
          toggle<T>(context);
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
    final Widget child = Text('${LanguageBinding.local.bookmark}...');
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
    QuranBinding.instance.getAyahAnnotation(location).isNotEmpty;
}
