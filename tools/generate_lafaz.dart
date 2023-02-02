// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';

import 'package:quran_app/quran/quran.dart';

void main() {
  final File file = File('./lafazs.tsv');
  final List<String> lines = file.readAsLinesSync();
  final StringBuffer sb = StringBuffer();

  int surah = 1;
  int ayah = 1;
  List<List<_Lafaz>> lafazs = <List<_Lafaz>>[];
  List<_Lafaz> oneAyah = <_Lafaz>[];

  void writer() {
    final String alphabet = QuranBinding.instance.getSurahAlphabet(surah);
    sb.write(
'''
mixin ${alphabet}AyahLafaz on AyahLafaz {
  static const List<List<Map<String, String>>> lafazs = <List<Map<String, String>>>[
    ${lafazs.map((e) => '[ ${e.map((e) => '{ \'${e.transliterate}\': \'${e.translate}\' }').join(', ')} ]').join(',\n    ')}
  ];

  @override
  List<Map<String, String>> getAyahLafaz(Location location) {
    if (location.surah == $surah) {
      return lafazs[location.ayah - 1];
    }

    return super.getAyahLafaz(location);
  }
}

'''
    );
  }

  for (int i = 2; i < lines.length; i++) {
    final String line = lines[i];
    final _Lafaz lafaz = _Lafaz.parse(line);

    void addOneAyah() {
      lafazs.add(oneAyah);
      oneAyah = [ lafaz ];
    }

    if (lafaz.location.surah == surah) {
      if (lafaz.location.ayah == ayah) {
        oneAyah.add(lafaz);
        continue;
      }
      ayah++;
      addOneAyah();

      if (lines.length > i + 1) {
        continue;
      }
    }

    ayah = 1;
    addOneAyah();

    writer();

    surah = lafaz.location.surah;
    lafazs = <List<_Lafaz>>[];
  }

  lafazs.add(oneAyah);
  writer();

  File('./a.txt').writeAsStringSync(sb.toString());
}

class _Lafaz {
  const _Lafaz._(
    this.location,
    this.transliterate,
    this.translate,
  );

  final _Location location;
  final String transliterate;
  final String translate;

  factory _Lafaz.parse(String source) {
    assert(source.isNotEmpty);
    assert(source[0] != '#');

    final List<String> parts = source.split('\t').map((e) => e.trim()).toList();
    assert(parts.length == 3);

    return _Lafaz._(
      _Location.parse(parts[0]),
      parts[1],
      parts[2].replaceAll('\'', '\\\''),
    );
  }
}

class _Location {
  const _Location._(
    this.surah,
    this.ayah,
    this.lafaz,
  ) : assert(1 <= surah && surah <= 114);

  final int surah;
  final int ayah;
  final int lafaz;

  factory _Location.parse(String source) {
    assert(source.isNotEmpty);
    assert(source[0] != '#');

    final List<String> parts = source.substring(1, source.length - 1).split(',');
    assert(parts.length == 3);

    return _Location._(
      int.parse(parts[0].trim()),
      int.parse(parts[1].trim()),
      int.parse(parts[2].trim()),
    );
  }
}
