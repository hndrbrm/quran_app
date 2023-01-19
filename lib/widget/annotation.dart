// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../data/annotation_scope.dart';
import '../quran/location.dart';
import '../quran/quran.dart';

class Annotation extends StatelessWidget {
  const Annotation({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  Widget build(BuildContext context) {
    final bool visible = AnnotationScope.watchOf(context).visible;
    if (!visible) {
      return const SizedBox.shrink();
    }

    final String annotation = Quran.instance.getAyahAnnotation(location);
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(annotation),
    );
  }
}
