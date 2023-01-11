// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'rounded_ink_well.dart';

class PopUpMenu extends StatelessWidget {
  const PopUpMenu({
    super.key,
    required this.child,
    required this.menuBuilder,
  });

  final Widget child;
  final Function(TapUpDetails details) menuBuilder;

  @override
  Widget build(BuildContext context) {
    return RoundedInkWell(
      onTapUp: (TapUpDetails details) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return menuBuilder(details);
          },
        );
      },
      // Hack to enable tap
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: child,
      ),
    );
  }
}
