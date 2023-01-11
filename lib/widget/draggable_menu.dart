// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';

class DraggableMenu extends StatefulWidget {
  const DraggableMenu({
    super.key,
    double? left,
    double? top,
    required this.child,
  }) : left = left ?? 0.0,
       top = top ?? 0.0;

  final double left;
  final double top;
  final Widget child;

  @override
  State<DraggableMenu> createState() => _DraggableMenuState();
}

class _DraggableMenuState extends State<DraggableMenu> {
  double? _left;
  double? _top;

  final GlobalKey _key = GlobalKey();
  Size? _widgetSize;

  double get _widgetWidth => _widgetSize?.width ?? 0.0;
  double get _widgetHeight => _widgetSize?.height ?? 0.0;

  double get _centerLeft => _widgetWidth / 2;
  double get _centerTop => _widgetHeight / 2;

  @override
  void initState() {
    super.initState();

    SchedulerBinding.instance.endOfFrame.then((value) {
      if (_key.currentContext?.size != null) {
        final Size size = _key.currentContext!.size!;
        setState(() {
          _widgetSize = size;
        });
      }
    });
  }

  double _clampLeft(double left) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return left.clamp(0.0, screenWidth - _widgetWidth);
  }

  double _clampTop(double top) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return top.clamp(0.0, screenHeight - _widgetHeight);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: _clampLeft(_left ?? widget.left - _centerLeft),
          top: _clampTop(_top ?? widget.top - _centerTop),
          child: Draggable(
            onDragEnd: (DraggableDetails details) {
              setState(() {
                _left = details.offset.dx;
                _top = details.offset.dy;
              });
            },
            feedback: widget.child,
            childWhenDragging: const SizedBox.shrink(),
            child: Container(
              key: _key,
              child: widget.child,
            ),
          ),
        ),
      ],
    );
  }
}
