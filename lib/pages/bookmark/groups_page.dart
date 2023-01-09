// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../data/bookmark.dart';
import '../../routes.dart';
import '../../widgets/rounded_ink_well.dart';
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
    final List<String> groups = GroupsScope.of(context).groups;

    if (groups.isEmpty) {
      return const _EmptyList();
    }

    return ListView.builder(
      itemCount: groups.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text(groups[index]),
          onTap: () {
            Navigator.of(context).pushNamed(
              LocationsRoute.name,
              arguments: {
                'group': groups[index],
              }
            );
          },
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
        onTap: () => _createGroup(context),
      ),
    );
  }
}

Future<void> _createGroup(BuildContext context) async {
  final GroupsScope gs = GroupsScope.of(context);
  final String? group = await showDialog(
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

  if (group != null) {
    gs.group = group;
  }
}
