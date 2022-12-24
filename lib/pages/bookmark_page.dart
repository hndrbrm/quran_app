// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:quran_app/provider/bookmark.dart';

import 'quran_drawer.dart';

class BookmarkPage extends StatelessWidget {
  const BookmarkPage({ super.key });

  @override
  Widget build(BuildContext context) {
    final List<Location> locations = Bookmark.of(context).locations ?? [];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Penanda'),
      ),
      drawer: const QuranDrawer(),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text('(${locations[index].surah}:${locations[index].ayah})'),
          );
        },
      ),
    );
  }
}
