// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../../mixin.dart';
import '../../persistent.dart';

class GroupsScope
  extends InheritedNotifier<ValueNotifier<List<String>>>
  with InitializeBinder, GroupsPreferences, _Groups, _Group
{
  GroupsScope({
    super.key,
    required super.child,
  }) : super(notifier: ValueNotifier<List<String>>(defaultGroups)) {
    initialize();
  }

  static const List<String> defaultGroups = <String>[];

  static GroupsScope watchOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GroupsScope>()!;
  }

  static GroupsScope readOf(BuildContext context) {
    return context.findAncestorWidgetOfExactType<GroupsScope>()!;
  }

  @override
  ValueNotifier<List<String>> get notifier => super.notifier!;
}

mixin _Groups on InitializeBinder, GroupsPreferences {
  ValueNotifier<List<String>> get notifier;

  List<String> get groups => notifier.value;
  set groups(List<String> value) {
    saveGroups(value);
    notifier.value = value;
  }

  @override
  void initialize() {
    super.initialize();

    () async {
      final List<String>? locations = await loadGroups();
      if (locations != null) {
        notifier.value = locations;
      }
    }();
  }
}

mixin _Group on _Groups {
  void addGroup(String group) {
    if (groups.contains(group)) {
      return;
    }

    groups = <String>[ group, ...groups ];
  }

  void removeGroup(String group) {
    if (groups.contains(group)) {
      groups = <String>[
        ...groups.where((element) => element != group)
      ];
    }
  }
}
