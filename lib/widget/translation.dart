// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';

import '../data/font_size/translation_size_mixin.dart';
import '../quran/location.dart';
import '../quran/quran.dart';

class Translation
  extends StatelessWidget
  with FinderMixin, TranslationSizeMixin, _SuperScriptMixin
{
  const Translation({
    super.key,
    required this.location,
  });

  final Location location;

  @override
  Widget build(BuildContext context) {
    final String translate = Quran.instance.getAyahTranslate(location);

    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Text(
        toSuperScript(translate),
        style: TextStyle(
          fontSize: fontSize(context),
        ),
      ),
    );
  }
}

mixin _SuperScriptMixin {
  static const Map<String, String> _mapper = {
    '0': '⁰',
    '1': '¹',
    '2': '²',
    '3': '³',
    '4': '⁴',
    '5': '⁵',
    '6': '⁶',
    '7': '⁷',
    '8': '⁸',
    '9': '⁹',
    'a': 'ᵃ',
    'b': 'ᵇ',
    'c': 'ᶜ',
    'd': 'ᵈ',
    'e': 'ᵉ',
    'f': 'ᶠ',
    'g': 'ᵍ',
    'h': 'ʰ',
    'i': 'ⁱ',
    'j': 'ʲ',
    'k': 'ᵏ',
    'l': 'ˡ',
    'm': 'ᵐ',
    'n': 'ⁿ',
    'o': 'ᵒ',
    'p': 'ᵖ',
    'r': 'ʳ',
    's': 'ˢ',
    't': 'ᵗ',
    'u': 'ᵘ',
    'v': 'ᵛ',
    'w': 'ʷ',
    'x': 'ˣ',
    'y': 'ʸ',
    'A': 'ᴬ',
    'B': 'ᴮ',
    'D': 'ᴰ',
    'E': 'ᴱ',
    'G': 'ᴳ',
    'H': 'ᴴ',
    'I': 'ᴵ',
    'J': 'ᴶ',
    'K': 'ᴷ',
    'L': 'ᴸ',
    'M': 'ᴹ',
    'N': 'ᴺ',
    'O': 'ᴼ',
    'P': 'ᴾ',
    'R': 'ᴿ',
    'T': 'ᵀ',
    'U': 'ᵁ',
    'V': 'ⱽ',
    'W': 'ᵂ',
    '+': '⁺',
    '-': '⁻',
    '=': '⁼',
    '(': '⁽',
    ')': '⁾',
    'ɑ': 'ᵅ',
    'ꞵ': 'ᵝ',
    'ɣ': 'ᵞ',
    'ẟ': 'ᵟ',
    'ɛ': 'ᵋ',
    'θ': 'ᶿ',
    'ɩ': 'ᶥ',
    'ɸ': 'ᶲ',
    'φ': 'ᵠ',
    'ꭓ': 'ᵡ',
  };

  String toSuperScript(String value, [ String? tag ]) {
    tag ??= 'sup';
    final String openTag = '<$tag>';
    final String closeTag = '</$tag>';
    int count = 0;

    String result = '';

    for (int i = 0; i < value.length; i++) {
      if (value.substring(i).startsWith(openTag)) {
        count++;
        i += openTag.length - 1;
        continue;
      }

      if (value.substring(i).startsWith(closeTag)) {
        count--;
        i += closeTag.length - 1;
        continue;
      }

      final String char = value[i];
      result = count > 0 && _mapper.containsKey(char)
        ? '$result${_mapper[char]!}'
        : '$result$char';
    }

    return result;
  }
}
