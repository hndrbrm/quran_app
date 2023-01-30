// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../data/visibility/annotation_mixin.dart';
import '../data/visibility/visibility_mixin.dart';
import '../quran/location.dart';
import '../quran/quran.dart';

class Annotation
  extends StatelessWidget
  with FinderMixin, VisibilityMixin, AnnotationMixin
{
  const Annotation({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: annotationVisible(context),
      child: Align(
        alignment: AlignmentDirectional.centerStart,
        child: Text(
          Quran.instance.getAyahAnnotation(location),
        ),
      ),
    );
  }
}
