// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

class Location {
  const Location(this.surah, this.ayah)
    : assert(1 <= surah && surah <= 114);

  Location.fromJson(Map<String, dynamic> json)
    : surah = json['surah'],
      ayah = json['ayah'];

  final int surah;
  final int ayah;

  Map<String, dynamic> toJson() => {
    'surah': surah,
    'ayah': ayah,
  };

  @override
  bool operator ==(Object other) {
    return
      other is Location &&
      other.surah == surah &&
      other.ayah == ayah;
  }

  @override
  int get hashCode => Object.hash(surah, ayah);
}
