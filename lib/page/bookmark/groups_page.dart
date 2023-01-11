// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../data/bookmark/groups_scope.dart';
import '../../data/bookmark/locations_scope.dart';
import '../../routes.dart';
import '../../widget/draggable_menu.dart';
import '../../widget/pop_up_menu.dart';
import '../../widget/rounded_ink_well.dart';
import '../quran_drawer.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({ super.key });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Penanda'),
        actions: <Widget>[
          IconButton(
            onPressed: () => _createGroup(context),
            icon: const Icon(Icons.add),
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

class _RemoveMenuItem extends StatelessWidget {
  const _RemoveMenuItem({
    required this.group,
  });

  final String group;

  @override
  Widget build(BuildContext context) {
    return RoundedInkWell(
      child: const Text('Remove'),
      onTap: () {
        GroupsScope.readOf(context).removeGroup(group);
        LocationsScope.readOf(context).removeLocation(group);
        Navigator.of(context).pop();
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
        onTap: () => _createGroup(context),
      ),
    );
  }
}

Future<void> _createGroup(BuildContext context) async {
  final GroupsScope gs = GroupsScope.readOf(context);
  final String? group = await showDialog(
    context: context,
    builder: (BuildContext context) {
      final TextEditingController controller = TextEditingController();
      void submit(String group) => Navigator.of(context).pop(group);

      return AlertDialog(
        title: TextField(
          controller: controller,
          focusNode: FocusNode()..requestFocus(),
          onSubmitted: submit,
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
            onPressed: () => submit(controller.text),
            child: const Text('Ok'),
          ),
        ],
      );
    },
  );

  if (group != null) {
    gs.addGroup(group);
  }
}
