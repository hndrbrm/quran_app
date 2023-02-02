// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';

mixin AyahSajdah {
  @mustCallSuper
  List<int> getAyahSajdah(int surah) => List.empty();
}

mixin ArafAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 7) {
      return <int>[ 206 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin RadAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 13) {
      return <int>[ 15 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin NahlAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 16) {
      return <int>[ 50 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin IsraAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 17) {
      return <int>[ 109 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin MaryamAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 19) {
      return <int>[ 58 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin HajjAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 22) {
      return <int>[ 18, 77 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin FurqanAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 25) {
      return <int>[ 60 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin NamlAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 27) {
      return <int>[ 26 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin SajdahAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 32) {
      return <int>[ 15 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin SadAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 38) {
      return <int>[ 24 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin FussilatAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 41) {
      return <int>[ 38 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin NajmAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 53) {
      return <int>[ 62 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin InsyiqaqAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 84) {
      return <int>[ 21 ];
    }

    return super.getAyahSajdah(surah);
  }
}

mixin AlaqAyahSajdah on AyahSajdah {
  @override
  List<int> getAyahSajdah(int surah) {
    if (surah == 96) {
      return <int>[ 19 ];
    }

    return super.getAyahSajdah(surah);
  }
}
