// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'ayah_transliterate.dart';
import 'quran.dart';

mixin AyahLength on Ayah {
  int getLength(int surah) => 0;
}

mixin FatihahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 1) {
      return FatihahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin BaqarahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 2) {
      return BaqarahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin ImranLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 3) {
      return ImranAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin NisaLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 4) {
      return NisaAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MaidahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 5) {
      return MaidahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin AnamLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 6) {
      return AnamAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin ArafLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 7) {
      return ArafAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin AnfalLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 8) {
      return AnfalAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin TaubahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 9) {
      return TaubahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin YunusLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 10) {
      return YunusAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin HudLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 11) {
      return HudAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin YusufLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 12) {
      return YusufAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin RadLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 13) {
      return RadAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin IbrahimLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 14) {
      return IbrahimAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin HijrLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 15) {
      return HijrAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin NahlLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 16) {
      return NahlAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin IsraLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 17) {
      return IsraAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin KahfLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 18) {
      return KahfAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MaryamLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 19) {
      return MaryamAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin TahaLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 20) {
      return TahaAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin AnbiyaLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 21) {
      return AnbiyaAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin HajjLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 22) {
      return HajjAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MukminunLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 23) {
      return MukminunAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin NurLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 24) {
      return NurAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin FurqanLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 25) {
      return FurqanAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin SyuaraLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 26) {
      return SyuaraAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin NamlLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 27) {
      return NamlAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin QasasLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 28) {
      return QasasAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin AnkabutLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 29) {
      return AnkabutAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin RumLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 30) {
      return RumAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin LuqmanLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 31) {
      return LuqmanAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin SajdahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 32) {
      return SajdahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin AhzabLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 33) {
      return AhzabAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin SabaLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 34) {
      return SabaAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin FatirLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 35) {
      return FatirAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin YasinLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 36) {
      return YasinAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin SaffatLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 37) {
      return SaffatAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin SadLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 38) {
      return SadAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin ZumarLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 39) {
      return ZumarAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin GafirLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 40) {
      return GafirAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin FussilatLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 41) {
      return FussilatAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin SyuraLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 42) {
      return SyuraAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin ZukhrufLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 43) {
      return ZukhrufAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin DukhanLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 44) {
      return DukhanAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin JasiyahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 45) {
      return JasiyahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin AhqafLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 46) {
      return AhqafAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MuhammadLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 47) {
      return MuhammadAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin FathLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 48) {
      return FathAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin HujuratLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 49) {
      return HujuratAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin QafLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 50) {
      return QafAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin ZariyatLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 51) {
      return ZariyatAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin TurLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 52) {
      return TurAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin NajmLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 53) {
      return NajmAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin QamarLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 54) {
      return QamarAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin RahmanLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 55) {
      return RahmanAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin WaqiahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 56) {
      return WaqiahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin HadidLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 57) {
      return HadidAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MujadalahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 58) {
      return MujadalahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin HasyrLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 59) {
      return HasyrAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MumtahanahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 60) {
      return MumtahanahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin SaffLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 61) {
      return SaffAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin JumuahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 62) {
      return JumuahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MunafiqunLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 63) {
      return MunafiqunAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin TagabunLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 64) {
      return TagabunAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin TalaqLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 65) {
      return TalaqAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin TahrimLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 66) {
      return TahrimAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MulkLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 67) {
      return MulkAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin QalamLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 68) {
      return QalamAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin HaqqahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 69) {
      return HaqqahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MaarijLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 70) {
      return MaarijAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin NuhLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 71) {
      return NuhAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin JinnLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 72) {
      return JinnAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MuzzamilLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 73) {
      return MuzzamilAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MuddassirLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 74) {
      return MuddassirAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin QiyamahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 75) {
      return QiyamahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin InsanLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 76) {
      return InsanAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MursalatLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 77) {
      return MursalatAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin NabaLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 78) {
      return NabaAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin NaziatLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 79) {
      return NaziatAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin AbasaLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 80) {
      return AbasaAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin TakwirLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 81) {
      return TakwirAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin InfitarLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 82) {
      return InfitarAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MutaffifinLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 83) {
      return MutaffifinAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin InsyiqaqLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 84) {
      return InsyiqaqAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin BurujLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 85) {
      return BurujAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin TariqLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 86) {
      return TariqAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin AklaLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 87) {
      return AklaAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin GasyiyahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 88) {
      return GasyiyahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin FajrLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 89) {
      return FajrAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin BaladLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 90) {
      return BaladAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin SyamsLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 91) {
      return SyamsAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin LailLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 92) {
      return LailAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin DuhaLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 93) {
      return DuhaAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin SyarhLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 94) {
      return SyarhAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin TinLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 95) {
      return TinAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin AlaqLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 96) {
      return AlaqAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin QadrLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 97) {
      return QadrAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin BayyinahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 98) {
      return BayyinahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin ZalzalahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 99) {
      return ZalzalahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin AdiyatLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 100) {
      return AdiyatAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin QariahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 101) {
      return QariahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin TakasurLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 102) {
      return TakasurAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin AsrLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 103) {
      return AsrAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin HumazahLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 104) {
      return HumazahAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin FilLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 105) {
      return FilAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin QuraisyLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 106) {
      return QuraisyAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin MaunLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 107) {
      return MaunAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin KausarLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 108) {
      return KausarAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin KafirunLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 109) {
      return KafirunAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin NasrLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 110) {
      return NasrAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin LahabLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 111) {
      return LahabAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin IkhlasLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 112) {
      return IkhlasAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin FalaqLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 113) {
      return FalaqAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}

mixin NasLength on AyahLength {
  @override
  int getLength(int surah) {
    if (surah == 114) {
      return NasAyahTransliterate.ayahs.length;
    }

    return super.getLength(surah);
  }
}
