// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

abstract class _Location {
  const _Location(this.surah, this.ayah)
    : assert(1 <= surah && surah <= 114);

  final int surah;
  final int ayah;
}

class Location extends _Location with _ToJson, _ToString, _Equality {
  const Location(super.surah, super.ayah);

  Location.fromJson(Map<String, dynamic> json)
    : super(json['surah'], json['ayah']);
}

mixin _ToJson on _Location {
  Map<String, dynamic> toJson() =>
    {
      'surah': surah,
      'ayah': ayah,
    };
}

mixin _ToString on _ToJson {
  @override
  String toString() => toJson().toString();
}

mixin _Equality on _Location {
  @override
  bool operator ==(Object other) =>
    other is Location &&
    other.surah == surah &&
    other.ayah == ayah;

  @override
  int get hashCode => Object.hash(surah, ayah);
}
