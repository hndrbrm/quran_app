// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';

mixin SurahTranslate {
  @mustCallSuper
  String getTranslate(int surah) => '';
}

mixin FatihahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 1) {
      return 'Pembukaan';
    }

    return super.getTranslate(surah);
  }
}

mixin BaqarahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 2) {
      return 'Sapi';
    }

    return super.getTranslate(surah);
  }
}

mixin ImranTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 3) {
      return 'Keluarga Imran';
    }

    return super.getTranslate(surah);
  }
}

mixin NisaTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 4) {
      return 'Wanita';
    }

    return super.getTranslate(surah);
  }
}

mixin MaidahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 5) {
      return 'Hidangan';
    }

    return super.getTranslate(surah);
  }
}

mixin AnamTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 6) {
      return 'Binatang Ternak';
    }

    return super.getTranslate(surah);
  }
}

mixin ArafTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 7) {
      return 'Tempat Tertinggi';
    }

    return super.getTranslate(surah);
  }
}

mixin AnfalTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 8) {
      return 'Rampasan Perang';
    }

    return super.getTranslate(surah);
  }
}

mixin TaubahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 9) {
      return 'Pengampunan';
    }

    return super.getTranslate(surah);
  }
}

mixin YunusTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 10) {
      return 'Yunus';
    }

    return super.getTranslate(surah);
  }
}

mixin HudTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 11) {
      return 'Hud';
    }

    return super.getTranslate(surah);
  }
}

mixin YusufTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 12) {
      return 'Yusuf';
    }

    return super.getTranslate(surah);
  }
}

mixin RadTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 13) {
      return 'Guruh';
    }

    return super.getTranslate(surah);
  }
}

mixin IbrahimTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 14) {
      return 'Ibrahim';
    }

    return super.getTranslate(surah);
  }
}

mixin HijrTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 15) {
      return 'Hijr';
    }

    return super.getTranslate(surah);
  }
}

mixin NahlTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 16) {
      return 'Lebah';
    }

    return super.getTranslate(surah);
  }
}

mixin IsraTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 17) {
      return 'Memperjalankan Malam Hari';
    }

    return super.getTranslate(surah);
  }
}

mixin KahfTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 18) {
      return 'Gua';
    }

    return super.getTranslate(surah);
  }
}

mixin MaryamTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 19) {
      return 'Maryam';
    }

    return super.getTranslate(surah);
  }
}

mixin TahaTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 20) {
      return 'Taha';
    }

    return super.getTranslate(surah);
  }
}

mixin AnbiyaTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 21) {
      return 'Para Nabi';
    }

    return super.getTranslate(surah);
  }
}

mixin HajjTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 22) {
      return 'Haji';
    }

    return super.getTranslate(surah);
  }
}

mixin MukminunTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 23) {
      return 'Orang-Orang Mukmin';
    }

    return super.getTranslate(surah);
  }
}

mixin NurTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 24) {
      return 'Cahaya';
    }

    return super.getTranslate(surah);
  }
}

mixin FurqanTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 25) {
      return 'Pembeda';
    }

    return super.getTranslate(surah);
  }
}

mixin SyuaraTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 26) {
      return 'Para Penyair';
    }

    return super.getTranslate(surah);
  }
}

mixin NamlTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 27) {
      return 'Semut';
    }

    return super.getTranslate(surah);
  }
}

mixin QasasTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 28) {
      return 'Kisah';
    }

    return super.getTranslate(surah);
  }
}

mixin AnkabutTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 29) {
      return 'Laba-Laba';
    }

    return super.getTranslate(surah);
  }
}

mixin RumTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 30) {
      return 'Romawi';
    }

    return super.getTranslate(surah);
  }
}

mixin LuqmanTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 31) {
      return 'Luqman';
    }

    return super.getTranslate(surah);
  }
}

mixin SajdahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 32) {
      return 'Sajdah';
    }

    return super.getTranslate(surah);
  }
}

mixin AhzabTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 33) {
      return 'Golongan Yang Bersekutu';
    }

    return super.getTranslate(surah);
  }
}

mixin SabaTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 34) {
      return "Saba'";
    }

    return super.getTranslate(surah);
  }
}

mixin FatirTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 35) {
      return 'Maha Pencipta';
    }

    return super.getTranslate(surah);
  }
}

mixin YasinTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 36) {
      return 'Yasin';
    }

    return super.getTranslate(surah);
  }
}

mixin SaffatTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 37) {
      return 'Yang Berbaris-baris';
    }

    return super.getTranslate(surah);
  }
}

mixin SadTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 38) {
      return 'Sad';
    }

    return super.getTranslate(surah);
  }
}

mixin ZumarTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 39) {
      return 'Rombongan';
    }

    return super.getTranslate(surah);
  }
}

mixin GafirTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 40) {
      return 'Maha Pengampun';
    }

    return super.getTranslate(surah);
  }
}

mixin FussilatTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 41) {
      return 'Yang Dijelaskan';
    }

    return super.getTranslate(surah);
  }
}

mixin SyuraTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 42) {
      return 'Musyawarah';
    }

    return super.getTranslate(surah);
  }
}

mixin ZukhrufTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 43) {
      return 'Perhiasan';
    }

    return super.getTranslate(surah);
  }
}

mixin DukhanTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 44) {
      return 'Kabut';
    }

    return super.getTranslate(surah);
  }
}

mixin JasiyahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 45) {
      return 'Berlutut';
    }

    return super.getTranslate(surah);
  }
}

mixin AhqafTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 46) {
      return 'Bukit Pasir';
    }

    return super.getTranslate(surah);
  }
}

mixin MuhammadTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 47) {
      return 'Muhammad';
    }

    return super.getTranslate(surah);
  }
}

mixin FathTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 48) {
      return 'Kemenangan';
    }

    return super.getTranslate(surah);
  }
}

mixin HujuratTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 49) {
      return 'Kamar-Kamar';
    }

    return super.getTranslate(surah);
  }
}

mixin QafTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 50) {
      return 'Qaf';
    }

    return super.getTranslate(surah);
  }
}

mixin ZariyatTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 51) {
      return 'Angin yang Menerbangkan';
    }

    return super.getTranslate(surah);
  }
}

mixin TurTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 52) {
      return 'Bukit Tursina';
    }

    return super.getTranslate(surah);
  }
}

mixin NajmTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 53) {
      return 'Bintang';
    }

    return super.getTranslate(surah);
  }
}

mixin QamarTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 54) {
      return 'Bulan';
    }

    return super.getTranslate(surah);
  }
}

mixin RahmanTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 55) {
      return 'Maha Pengasih';
    }

    return super.getTranslate(surah);
  }
}

mixin WaqiahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 56) {
      return "Hari Kiamat Yang Pasti Terjadi";
    }

    return super.getTranslate(surah);
  }
}

mixin HadidTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 57) {
      return 'Besi';
    }

    return super.getTranslate(surah);
  }
}

mixin MujadalahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 58) {
      return 'Gugatan';
    }

    return super.getTranslate(surah);
  }
}

mixin HasyrTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 59) {
      return 'Pengusiran';
    }

    return super.getTranslate(surah);
  }
}

mixin MumtahanahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 60) {
      return 'Wanita Yang Diuji';
    }

    return super.getTranslate(surah);
  }
}

mixin SaffTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 61) {
      return 'Barisan';
    }

    return super.getTranslate(surah);
  }
}

mixin JumuahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 62) {
      return 'Jumat';
    }

    return super.getTranslate(surah);
  }
}

mixin MunafiqunTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 63) {
      return 'Orang-Orang Munafik';
    }

    return super.getTranslate(surah);
  }
}

mixin TagabunTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 64) {
      return 'Pengungkapan Kesalahan';
    }

    return super.getTranslate(surah);
  }
}

mixin TalaqTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 65) {
      return 'Talak';
    }

    return super.getTranslate(surah);
  }
}

mixin TahrimTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 66) {
      return 'Pengharaman';
    }

    return super.getTranslate(surah);
  }
}

mixin MulkTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 67) {
      return 'Kerajaan';
    }

    return super.getTranslate(surah);
  }
}

mixin QalamTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 68) {
      return 'Pena';
    }

    return super.getTranslate(surah);
  }
}

mixin HaqqahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 69) {
      return 'Hari Kiamat Yang Pasti Datang';
    }

    return super.getTranslate(surah);
  }
}

mixin MaarijTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 70) {
      return 'Tempat-Tempat Naik';
    }

    return super.getTranslate(surah);
  }
}

mixin NuhTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 71) {
      return 'Nuh';
    }

    return super.getTranslate(surah);
  }
}

mixin JinnTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 72) {
      return 'Jin';
    }

    return super.getTranslate(surah);
  }
}

mixin MuzzamilTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 73) {
      return 'Orang Berkelumun';
    }

    return super.getTranslate(surah);
  }
}

mixin MuddassirTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 74) {
      return 'Orang Berselimut';
    }

    return super.getTranslate(surah);
  }
}

mixin QiyamahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 75) {
      return 'Hari Kiamat';
    }

    return super.getTranslate(surah);
  }
}

mixin InsanTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 76) {
      return 'Manusia';
    }

    return super.getTranslate(surah);
  }
}

mixin MursalatTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 77) {
      return 'Malaikat Yang Diutus';
    }

    return super.getTranslate(surah);
  }
}

mixin NabaTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 78) {
      return "Berita";
    }

    return super.getTranslate(surah);
  }
}

mixin NaziatTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 79) {
      return 'Yang Mencabut Dengan Keras';
    }

    return super.getTranslate(surah);
  }
}

mixin AbasaTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 80) {
      return 'Bermuka Masam';
    }

    return super.getTranslate(surah);
  }
}

mixin TakwirTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 81) {
      return 'Penggulungan';
    }

    return super.getTranslate(surah);
  }
}

mixin InfitarTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 82) {
      return 'Terbelah';
    }

    return super.getTranslate(surah);
  }
}

mixin MutaffifinTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 83) {
      return 'Orang-Orang Yang Curang';
    }

    return super.getTranslate(surah);
  }
}

mixin InsyiqaqTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 84) {
      return 'Terbelah';
    }

    return super.getTranslate(surah);
  }
}

mixin BurujTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 85) {
      return 'Gugusan Bintang';
    }

    return super.getTranslate(surah);
  }
}

mixin TariqTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 86) {
      return 'Yang Datang Pada Malam Hari';
    }

    return super.getTranslate(surah);
  }
}

mixin AklaTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 87) {
      return 'Maha Tinggi';
    }

    return super.getTranslate(surah);
  }
}

mixin GasyiyahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 88) {
      return 'Hari Kiamat Yang Menghilangkan Kesadaran';
    }

    return super.getTranslate(surah);
  }
}

mixin FajrTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 89) {
      return 'Fajar';
    }

    return super.getTranslate(surah);
  }
}

mixin BaladTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 90) {
      return 'Negeri';
    }

    return super.getTranslate(surah);
  }
}

mixin SyamsTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 91) {
      return 'Matahari';
    }

    return super.getTranslate(surah);
  }
}

mixin LailTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 92) {
      return 'Malam';
    }

    return super.getTranslate(surah);
  }
}

mixin DuhaTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 93) {
      return 'Duha';
    }

    return super.getTranslate(surah);
  }
}

mixin SyarhTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 94) {
      return 'Pelapangan';
    }

    return super.getTranslate(surah);
  }
}

mixin TinTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 95) {
      return 'Buah Tin';
    }

    return super.getTranslate(surah);
  }
}

mixin AlaqTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 96) {
      return 'Segumpal Darah';
    }

    return super.getTranslate(surah);
  }
}

mixin QadrTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 97) {
      return 'Kemuliaan';
    }

    return super.getTranslate(surah);
  }
}

mixin BayyinahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 98) {
      return 'Bukti Nyata';
    }

    return super.getTranslate(surah);
  }
}

mixin ZalzalahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 99) {
      return 'Guncangan';
    }

    return super.getTranslate(surah);
  }
}

mixin AdiyatTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 100) {
      return 'Kuda Perang Yang Berlari Kencang';
    }

    return super.getTranslate(surah);
  }
}

mixin QariahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 101) {
      return 'Hari Kiamat Yang Menggetarkan';
    }

    return super.getTranslate(surah);
  }
}

mixin TakasurTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 102) {
      return 'Bermegah-Megahan';
    }

    return super.getTranslate(surah);
  }
}

mixin AsrTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 103) {
      return 'Asar';
    }

    return super.getTranslate(surah);
  }
}

mixin HumazahTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 104) {
      return 'Pengumpat';
    }

    return super.getTranslate(surah);
  }
}

mixin FilTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 105) {
      return 'Gajah';
    }

    return super.getTranslate(surah);
  }
}

mixin QuraisyTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 106) {
      return 'Quraisy';
    }

    return super.getTranslate(surah);
  }
}

mixin MaunTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 107) {
      return 'Bantuan';
    }

    return super.getTranslate(surah);
  }
}

mixin KausarTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 108) {
      return 'Nikmat Yang Banyak';
    }

    return super.getTranslate(surah);
  }
}

mixin KafirunTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 109) {
      return 'Orang-Orang kafir';
    }

    return super.getTranslate(surah);
  }
}

mixin NasrTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 110) {
      return 'Pertolongan';
    }

    return super.getTranslate(surah);
  }
}

mixin LahabTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 111) {
      return 'Gejolak Api';
    }

    return super.getTranslate(surah);
  }
}

mixin IkhlasTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 112) {
      return 'Ikhlas';
    }

    return super.getTranslate(surah);
  }
}

mixin FalaqTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 113) {
      return 'Fajar';
    }

    return super.getTranslate(surah);
  }
}

mixin NasTranslate on SurahTranslate {
  @override
  String getTranslate(int surah) {
    if (surah == 114) {
      return 'Manusia';
    }

    return super.getTranslate(surah);
  }
}
