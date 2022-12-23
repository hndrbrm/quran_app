// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

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
    return _RoundedInkWell(
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

class _RoundedInkWell extends InkWell {
  const _RoundedInkWell({
    super.key,
    super.child,
    super.onTap,
    super.onDoubleTap,
    super.onLongPress,
    super.onTapDown,
    super.onTapUp,
    super.onTapCancel,
    super.onHighlightChanged,
    super.onHover,
    super.mouseCursor,
    super.focusColor,
    super.hoverColor,
    super.highlightColor,
    super.overlayColor,
    super.splashColor,
    super.splashFactory,
    super.radius,
    super.borderRadius,
    ShapeBorder? customBorder,
    super.enableFeedback,
    super.excludeFromSemantics,
    super.focusNode,
    super.canRequestFocus,
    super.onFocusChange,
    super.autofocus,
    super.statesController,
  }) : super(
    customBorder: customBorder ?? const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  );
}
