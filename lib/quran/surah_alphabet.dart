// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';

import 'quran.dart';

mixin SurahAlphabet on Surah {
  @protected
  @mustCallSuper
  String getSurahAlphabet(int surah) => '';
}

mixin FatihahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 1) {
      return 'Fatihah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin BaqarahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 2) {
      return 'Baqarah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin ImranAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 3) {
      return 'Imran';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin NisaAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 4) {
      return 'Nisa';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MaidahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 5) {
      return 'Maidah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin AnamAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 6) {
      return 'Anam';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin ArafAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 7) {
      return 'Araf';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin AnfalAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 8) {
      return 'Anfal';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin TaubahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 9) {
      return 'Taubah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin YunusAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 10) {
      return 'Yunus';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin HudAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 11) {
      return 'Hud';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin YusufAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 12) {
      return 'Yusuf';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin RadAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 13) {
      return 'Rad';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin IbrahimAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 14) {
      return 'Ibrahim';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin HijrAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 15) {
      return 'Hijr';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin NahlAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 16) {
      return 'Nahl';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin IsraAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 17) {
      return 'Isra';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin KahfAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 18) {
      return 'Kahf';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MaryamAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 19) {
      return 'Maryam';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin TahaAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 20) {
      return 'Taha';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin AnbiyaAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 21) {
      return 'Anbiya';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin HajjAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 22) {
      return 'Hajj';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MukminunAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 23) {
      return 'Mukminun';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin NurAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 24) {
      return 'Nur';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin FurqanAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 25) {
      return 'Furqan';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin SyuaraAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 26) {
      return 'Syuara';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin NamlAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 27) {
      return 'Naml';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin QasasAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 28) {
      return 'Qasas';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin AnkabutAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 29) {
      return 'Ankabut';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin RumAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 30) {
      return 'Rum';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin LuqmanAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 31) {
      return 'Luqman';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin SajdahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 32) {
      return 'Sajdah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin AhzabAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 33) {
      return 'Ahzab';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin SabaAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 34) {
      return 'Saba';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin FatirAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 35) {
      return 'Fatir';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin YasinAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 36) {
      return 'Yasin';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin SaffatAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 37) {
      return 'Saffat';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin SadAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 38) {
      return 'Sad';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin ZumarAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 39) {
      return 'Zumar';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin GafirAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 40) {
      return 'Gafir';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin FussilatAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 41) {
      return 'Fussilat';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin SyuraAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 42) {
      return 'Syura';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin ZukhrufAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 43) {
      return 'Zukhruf';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin DukhanAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 44) {
      return 'Dukhan';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin JasiyahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 45) {
      return 'Jasiyah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin AhqafAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 46) {
      return 'Ahqaf';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MuhammadAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 47) {
      return 'Muhammad';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin FathAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 48) {
      return 'Fath';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin HujuratAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 49) {
      return 'Hujurat';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin QafAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 50) {
      return 'Qaf';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin ZariyatAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 51) {
      return 'Zariyat';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin TurAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 52) {
      return 'Tur';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin NajmAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 53) {
      return 'Najm';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin QamarAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 54) {
      return 'Qamar';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin RahmanAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 55) {
      return 'Rahman';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin WaqiahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 56) {
      return 'Waqiah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin HadidAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 57) {
      return 'Hadid';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MujadalahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 58) {
      return 'Mujadalah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin HasyrAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 59) {
      return 'Hasyr';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MumtahanahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 60) {
      return 'Mumtahanah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin SaffAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 61) {
      return 'Saff';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin JumuahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 62) {
      return 'Jumuah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MunafiqunAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 63) {
      return 'Munafiqun';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin TagabunAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 64) {
      return 'Tagabun';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin TalaqAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 65) {
      return 'Talaq';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin TahrimAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 66) {
      return 'Tahrim';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MulkAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 67) {
      return 'Mulk';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin QalamAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 68) {
      return 'Qalam';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin HaqqahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 69) {
      return 'Haqqah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MaarijAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 70) {
      return 'Maarij';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin NuhAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 71) {
      return 'Nuh';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin JinnAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 72) {
      return 'Jinn';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MuzzamilAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 73) {
      return 'Muzzamil';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MuddassirAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 74) {
      return 'Muddassir';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin QiyamahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 75) {
      return 'Qiyamah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin InsanAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 76) {
      return 'Insan';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MursalatAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 77) {
      return 'Mursalat';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin NabaAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 78) {
      return 'Naba';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin NaziatAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 79) {
      return 'Naziat';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin AbasaAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 80) {
      return 'Abasa';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin TakwirAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 81) {
      return 'Takwir';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin InfitarAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 82) {
      return 'Infitar';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MutaffifinAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 83) {
      return 'Mutaffifin';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin InsyiqaqAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 84) {
      return 'Insyiqaq';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin BurujAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 85) {
      return 'Buruj';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin TariqAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 86) {
      return 'Tariq';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin AklaAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 87) {
      return 'Akla';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin GasyiyahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 88) {
      return 'Gasyiyah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin FajrAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 89) {
      return 'Fajr';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin BaladAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 90) {
      return 'Balad';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin SyamsAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 91) {
      return 'Syams';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin LailAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 92) {
      return 'Lail';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin DuhaAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 93) {
      return 'Duha';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin SyarhAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 94) {
      return 'Syarh';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin TinAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 95) {
      return 'Tin';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin AlaqAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 96) {
      return 'Alaq';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin QadrAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 97) {
      return 'Qadr';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin BayyinahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 98) {
      return 'Bayyinah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin ZalzalahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 99) {
      return 'Zalzalah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin AdiyatAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 100) {
      return 'Adiyat';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin QariahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 101) {
      return 'Qariah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin TakasurAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 102) {
      return 'Takasur';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin AsrAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 103) {
      return 'Asr';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin HumazahAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 104) {
      return 'Humazah';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin FilAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 105) {
      return 'Fil';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin QuraisyAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 106) {
      return 'Quraisy';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin MaunAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 107) {
      return 'Maun';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin KausarAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 108) {
      return 'Kausar';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin KafirunAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 109) {
      return 'Kafirun';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin NasrAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 110) {
      return 'Nasr';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin LahabAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 111) {
      return 'Lahab';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin IkhlasAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 112) {
      return 'Ikhlas';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin FalaqAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 113) {
      return 'Falaq';
    }

    return super.getSurahAlphabet(surah);
  }
}

mixin NasAlphabet on SurahAlphabet {
  @override
  String getSurahAlphabet(int surah) {
    if (surah == 114) {
      return 'Nas';
    }

    return super.getSurahAlphabet(surah);
  }
}
