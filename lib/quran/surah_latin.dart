// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';

import 'quran.dart';

mixin SurahLatin on Surah {
  @protected
  @mustCallSuper
  String getLatin(int surah) => '';
}

mixin FatihahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 1) {
      return 'Al-Fātiḥah';
    }

    return super.getLatin(surah);
  }
}

mixin BaqarahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 2) {
      return 'Al-Baqarah';
    }

    return super.getLatin(surah);
  }
}

mixin ImranLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 3) {
      return "Āli 'Imrān";
    }

    return super.getLatin(surah);
  }
}

mixin NisaLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 4) {
      return "An-Nisā'";
    }

    return super.getLatin(surah);
  }
}

mixin MaidahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 5) {
      return "Al-Mā'idah";
    }

    return super.getLatin(surah);
  }
}

mixin AnamLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 6) {
      return "Al-An'ām";
    }

    return super.getLatin(surah);
  }
}

mixin ArafLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 7) {
      return "Al-A'rāf";
    }

    return super.getLatin(surah);
  }
}

mixin AnfalLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 8) {
      return 'Al-Anfāl';
    }

    return super.getLatin(surah);
  }
}

mixin TaubahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 9) {
      return 'At-Taubah';
    }

    return super.getLatin(surah);
  }
}

mixin YunusLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 10) {
      return 'Yūnus';
    }

    return super.getLatin(surah);
  }
}

mixin HudLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 11) {
      return 'Hūd';
    }

    return super.getLatin(surah);
  }
}

mixin YusufLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 12) {
      return 'Yūsuf';
    }

    return super.getLatin(surah);
  }
}

mixin RadLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 13) {
      return "Ar-Ra'd";
    }

    return super.getLatin(surah);
  }
}

mixin IbrahimLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 14) {
      return 'Ibrāhīm';
    }

    return super.getLatin(surah);
  }
}

mixin HijrLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 15) {
      return 'Al-Ḥijr';
    }

    return super.getLatin(surah);
  }
}

mixin NahlLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 16) {
      return 'An-Naḥl';
    }

    return super.getLatin(surah);
  }
}

mixin IsraLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 17) {
      return "Al-Isrā'";
    }

    return super.getLatin(surah);
  }
}

mixin KahfLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 18) {
      return 'Al-Kahf';
    }

    return super.getLatin(surah);
  }
}

mixin MaryamLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 19) {
      return 'Maryam';
    }

    return super.getLatin(surah);
  }
}

mixin TahaLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 20) {
      return 'Ṭāhā';
    }

    return super.getLatin(surah);
  }
}

mixin AnbiyaLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 21) {
      return "Al-Anbiyā'";
    }

    return super.getLatin(surah);
  }
}

mixin HajjLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 22) {
      return 'Al-Ḥajj';
    }

    return super.getLatin(surah);
  }
}

mixin MukminunLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 23) {
      return "Al-Mu'minūn";
    }

    return super.getLatin(surah);
  }
}

mixin NurLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 24) {
      return 'An-Nūr';
    }

    return super.getLatin(surah);
  }
}

mixin FurqanLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 25) {
      return 'Al-Furqān';
    }

    return super.getLatin(surah);
  }
}

mixin SyuaraLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 26) {
      return "Asy-Syu'arā'";
    }

    return super.getLatin(surah);
  }
}

mixin NamlLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 27) {
      return 'An-Naml';
    }

    return super.getLatin(surah);
  }
}

mixin QasasLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 28) {
      return 'Al-Qaṣaṣ';
    }

    return super.getLatin(surah);
  }
}

mixin AnkabutLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 29) {
      return "Al-'Ankabūt";
    }

    return super.getLatin(surah);
  }
}

mixin RumLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 30) {
      return 'Ar-Rūm';
    }

    return super.getLatin(surah);
  }
}

mixin LuqmanLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 31) {
      return 'Luqmān';
    }

    return super.getLatin(surah);
  }
}

mixin SajdahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 32) {
      return 'As-Sajdah';
    }

    return super.getLatin(surah);
  }
}

mixin AhzabLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 33) {
      return 'Al-Aḥzāb';
    }

    return super.getLatin(surah);
  }
}

mixin SabaLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 34) {
      return "Saba'";
    }

    return super.getLatin(surah);
  }
}

mixin FatirLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 35) {
      return 'Fāṭir';
    }

    return super.getLatin(surah);
  }
}

mixin YasinLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 36) {
      return 'Yāsīn';
    }

    return super.getLatin(surah);
  }
}

mixin SaffatLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 37) {
      return 'Aṣ-Ṣāffāt';
    }

    return super.getLatin(surah);
  }
}

mixin SadLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 38) {
      return 'Ṣād';
    }

    return super.getLatin(surah);
  }
}

mixin ZumarLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 39) {
      return 'Az-Zumar';
    }

    return super.getLatin(surah);
  }
}

mixin GafirLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 40) {
      return 'Gāfir';
    }

    return super.getLatin(surah);
  }
}

mixin FussilatLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 41) {
      return 'Fuṣṣilat';
    }

    return super.getLatin(surah);
  }
}

mixin SyuraLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 42) {
      return 'Asy-Syūrā';
    }

    return super.getLatin(surah);
  }
}

mixin ZukhrufLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 43) {
      return 'Az-Zukhruf';
    }

    return super.getLatin(surah);
  }
}

mixin DukhanLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 44) {
      return 'Ad-Dukhān';
    }

    return super.getLatin(surah);
  }
}

mixin JasiyahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 45) {
      return 'Al-Jāṡiyah';
    }

    return super.getLatin(surah);
  }
}

mixin AhqafLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 46) {
      return 'Al-Aḥqāf';
    }

    return super.getLatin(surah);
  }
}

mixin MuhammadLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 47) {
      return 'Muḥammad';
    }

    return super.getLatin(surah);
  }
}

mixin FathLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 48) {
      return 'Al-Fatḥ';
    }

    return super.getLatin(surah);
  }
}

mixin HujuratLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 49) {
      return 'Al-Ḥujurāt';
    }

    return super.getLatin(surah);
  }
}

mixin QafLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 50) {
      return 'Qāf';
    }

    return super.getLatin(surah);
  }
}

mixin ZariyatLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 51) {
      return 'Aż-Żāriyāt';
    }

    return super.getLatin(surah);
  }
}

mixin TurLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 52) {
      return 'At-Ṭūr';
    }

    return super.getLatin(surah);
  }
}

mixin NajmLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 53) {
      return 'An-Najm';
    }

    return super.getLatin(surah);
  }
}

mixin QamarLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 54) {
      return 'Al-Qamar';
    }

    return super.getLatin(surah);
  }
}

mixin RahmanLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 55) {
      return 'Ar-Raḥmān';
    }

    return super.getLatin(surah);
  }
}

mixin WaqiahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 56) {
      return "Al-Wāqi'ah";
    }

    return super.getLatin(surah);
  }
}

mixin HadidLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 57) {
      return 'Al-Ḥadīd';
    }

    return super.getLatin(surah);
  }
}

mixin MujadalahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 58) {
      return 'Al-Mujādalah';
    }

    return super.getLatin(surah);
  }
}

mixin HasyrLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 59) {
      return 'Al-Ḥasyr';
    }

    return super.getLatin(surah);
  }
}

mixin MumtahanahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 60) {
      return 'Al-Mumtaḥanah';
    }

    return super.getLatin(surah);
  }
}

mixin SaffLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 61) {
      return 'Aṣ-Ṣaff';
    }

    return super.getLatin(surah);
  }
}

mixin JumuahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 62) {
      return "Al-Jumu'ah";
    }

    return super.getLatin(surah);
  }
}

mixin MunafiqunLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 63) {
      return 'Al-Munāfiqūn';
    }

    return super.getLatin(surah);
  }
}

mixin TagabunLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 64) {
      return 'At-Tagābun';
    }

    return super.getLatin(surah);
  }
}

mixin TalaqLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 65) {
      return 'At-Talāq';
    }

    return super.getLatin(surah);
  }
}

mixin TahrimLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 66) {
      return 'At-Taḥrīm';
    }

    return super.getLatin(surah);
  }
}

mixin MulkLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 67) {
      return 'Al-Mulk';
    }

    return super.getLatin(surah);
  }
}

mixin QalamLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 68) {
      return 'Al-Qalam';
    }

    return super.getLatin(surah);
  }
}

mixin HaqqahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 69) {
      return 'Al-Ḥāqqah';
    }

    return super.getLatin(surah);
  }
}

mixin MaarijLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 70) {
      return "Al-Ma'ārij";
    }

    return super.getLatin(surah);
  }
}

mixin NuhLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 71) {
      return 'Nūḥ';
    }

    return super.getLatin(surah);
  }
}

mixin JinnLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 72) {
      return 'Al-Jinn';
    }

    return super.getLatin(surah);
  }
}

mixin MuzzamilLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 73) {
      return 'Al-Muzzammil';
    }

    return super.getLatin(surah);
  }
}

mixin MuddassirLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 74) {
      return 'Al-Muddaṡṡir';
    }

    return super.getLatin(surah);
  }
}

mixin QiyamahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 75) {
      return 'Al-Qiyāmah';
    }

    return super.getLatin(surah);
  }
}

mixin InsanLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 76) {
      return 'Al-Insān';
    }

    return super.getLatin(surah);
  }
}

mixin MursalatLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 77) {
      return 'Al-Mursalāt';
    }

    return super.getLatin(surah);
  }
}

mixin NabaLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 78) {
      return "An-Naba'";
    }

    return super.getLatin(surah);
  }
}

mixin NaziatLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 79) {
      return "An-Nāzi'āt";
    }

    return super.getLatin(surah);
  }
}

mixin AbasaLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 80) {
      return "'Abasa";
    }

    return super.getLatin(surah);
  }
}

mixin TakwirLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 81) {
      return 'At-Takwīr';
    }

    return super.getLatin(surah);
  }
}

mixin InfitarLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 82) {
      return 'Al-Infiṭār';
    }

    return super.getLatin(surah);
  }
}

mixin MutaffifinLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 83) {
      return 'Al-Muṭaffifīn';
    }

    return super.getLatin(surah);
  }
}

mixin InsyiqaqLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 84) {
      return 'Al-Insyiqāq';
    }

    return super.getLatin(surah);
  }
}

mixin BurujLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 85) {
      return 'Al-Burūj';
    }

    return super.getLatin(surah);
  }
}

mixin TariqLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 86) {
      return 'At-Ṭāriq';
    }

    return super.getLatin(surah);
  }
}

mixin AklaLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 87) {
      return "Al-A'lā";
    }

    return super.getLatin(surah);
  }
}

mixin GasyiyahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 88) {
      return 'Al-Gāsyiyah';
    }

    return super.getLatin(surah);
  }
}

mixin FajrLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 89) {
      return 'Al-Fajr';
    }

    return super.getLatin(surah);
  }
}

mixin BaladLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 90) {
      return 'Al-Balad';
    }

    return super.getLatin(surah);
  }
}

mixin SyamsLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 91) {
      return 'Asy-Syams';
    }

    return super.getLatin(surah);
  }
}

mixin LailLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 92) {
      return 'Al-Lail';
    }

    return super.getLatin(surah);
  }
}

mixin DuhaLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 93) {
      return 'Ad-Duḥā';
    }

    return super.getLatin(surah);
  }
}

mixin SyarhLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 94) {
      return 'Asy-Syarḥ';
    }

    return super.getLatin(surah);
  }
}

mixin TinLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 95) {
      return 'At-Tīn';
    }

    return super.getLatin(surah);
  }
}

mixin AlaqLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 96) {
      return "Al-'Alaq";
    }

    return super.getLatin(surah);
  }
}

mixin QadrLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 97) {
      return 'Al-Qadr';
    }

    return super.getLatin(surah);
  }
}

mixin BayyinahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 98) {
      return 'Al-Bayyinah';
    }

    return super.getLatin(surah);
  }
}

mixin ZalzalahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 99) {
      return 'Az-Zalzalah';
    }

    return super.getLatin(surah);
  }
}

mixin AdiyatLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 100) {
      return "Al-'Adiyāt";
    }

    return super.getLatin(surah);
  }
}

mixin QariahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 101) {
      return "Al-Qāri'ah";
    }

    return super.getLatin(surah);
  }
}

mixin TakasurLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 102) {
      return 'At-Takāṡur';
    }

    return super.getLatin(surah);
  }
}

mixin AsrLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 103) {
      return "Al-'Aṣr";
    }

    return super.getLatin(surah);
  }
}

mixin HumazahLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 104) {
      return 'Al-Humazah';
    }

    return super.getLatin(surah);
  }
}

mixin FilLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 105) {
      return 'Al-Fīl';
    }

    return super.getLatin(surah);
  }
}

mixin QuraisyLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 106) {
      return 'Quraisy';
    }

    return super.getLatin(surah);
  }
}

mixin MaunLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 107) {
      return "Al-Mā'ūn";
    }

    return super.getLatin(surah);
  }
}

mixin KausarLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 108) {
      return 'Al-Kauṡar';
    }

    return super.getLatin(surah);
  }
}

mixin KafirunLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 109) {
      return 'Al-Kāfirūn';
    }

    return super.getLatin(surah);
  }
}

mixin NasrLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 110) {
      return 'An-Naṣr';
    }

    return super.getLatin(surah);
  }
}

mixin LahabLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 111) {
      return 'Al-Lahab';
    }

    return super.getLatin(surah);
  }
}

mixin IkhlasLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 112) {
      return 'Al-Ikhlāṣ';
    }

    return super.getLatin(surah);
  }
}

mixin FalaqLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 113) {
      return 'Al-Falaq';
    }

    return super.getLatin(surah);
  }
}

mixin NasLatin on SurahLatin {
  @override
  String getLatin(int surah) {
    if (surah == 114) {
      return 'An-Nās';
    }

    return super.getLatin(surah);
  }
}
