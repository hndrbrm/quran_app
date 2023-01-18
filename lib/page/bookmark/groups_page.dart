// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../data.dart';
import '../../mixin.dart';
import '../../routes.dart';
import '../../widget.dart';
import '../quran_drawer.dart';

class GroupsPage extends StatelessWidget with BookmarkMixin {
  const GroupsPage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penanda'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => createGroup(context),
          ),
        ],
      ),
      drawer: const QuranDrawer(),
      body: const _GroupsList(),
    );
  }
}

class _GroupsList extends StatelessWidget {
  const _GroupsList();

  @override
  Widget build(BuildContext context) {
    final List<String> groups = GroupsScope.watchOf(context).groups;

    if (groups.isEmpty) {
      return const _EmptyList();
    }

    return ListView.builder(
      itemCount: groups.length,
      itemBuilder: (BuildContext context, int index) {
        return _GroupsItem(group: groups[index]);
      },
    );
  }
}

class _GroupsItem extends StatelessWidget {
  const _GroupsItem({
    required this.group,
  });

  final String group;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _GroupsMenu(
            group: group,
            child: Text(group),
          ),
        ],
      ),
      onTap: () => LocationsRoute.push(context, group),
    );
  }
}

class _GroupsMenu extends StatelessWidget {
  const _GroupsMenu({
    required this.group,
    required this.child,
  });

  final String group;
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
                    _LocationMenuItem(group: group),
                    _RemoveMenuItem(group: group),
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

class _LocationMenuItem extends StatelessWidget {
  const _LocationMenuItem({
    required this.group,
  });

  final String group;

  @override
  Widget build(BuildContext context) {
    return RoundedInkWell(
      child: const Text('Location'),
      onTap: () => LocationsRoute.push(context, group),
    );
  }
}

class _RemoveMenuItem extends StatelessWidget with BookmarkMixin {
  const _RemoveMenuItem({
    required this.group,
  });

  final String group;

  @override
  Widget build(BuildContext context) {
    return RoundedInkWell(
      child: const Text('Remove'),
      onTap: () => removeGroupThenPop(context, group),
    );
  }
}

class _EmptyList extends StatelessWidget with BookmarkMixin {
  const _EmptyList();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RoundedInkWell(
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Create Group'),
        ),
        onTap: () => createGroup(context),
      ),
    );
  }
}
