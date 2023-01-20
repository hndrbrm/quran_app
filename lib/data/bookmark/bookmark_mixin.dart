// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'groups_scope.dart';
import 'locations_scope.dart';
import '../finder_mixin.dart';

export '../finder_mixin.dart';

mixin BookmarkMixin on FinderMixin {
  void _removeGroup(BuildContext context, String group) {
    read<GroupsScope>(context).removeGroup(group);
    read<LocationsScope>(context).removeLocations(group);
  }

  void removeGroupThenPop(BuildContext context, String group) {
    _removeGroup(context, group);
    Navigator.of(context).pop();
  }

  Future<String?> createGroup(BuildContext context) async {
    final GroupsScope gs = read<GroupsScope>(context);

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
      return group;
    }

    return null;
  }
}
