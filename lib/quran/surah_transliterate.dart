// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';

mixin SurahTransliterate {
  @mustCallSuper
  String getTransliterate(int surah) => '';
}

mixin FatihahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 1) {
      return 'AlfAtHp';
    }

    return super.getTransliterate(surah);
  }
}

mixin BaqarahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 2) {
      return 'Albqrp';
    }

    return super.getTransliterate(surah);
  }
}

mixin ImranTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 3) {
      return 'A`l EmrAn';
    }

    return super.getTransliterate(surah);
  }
}

mixin NisaTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 4) {
      return "AlnsA^'";
    }

    return super.getTransliterate(surah);
  }
}

mixin MaidahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 5) {
      return 'AlmA^}dp';
    }

    return super.getTransliterate(surah);
  }
}

mixin AnamTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 6) {
      return 'AlAnEAm';
    }

    return super.getTransliterate(surah);
  }
}

mixin ArafTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 7) {
      return 'AlAErAf';
    }

    return super.getTransliterate(surah);
  }
}

mixin AnfalTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 8) {
      return 'AlAnfAl';
    }

    return super.getTransliterate(surah);
  }
}

mixin TaubahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 9) {
      return 'Altwbp';
    }

    return super.getTransliterate(surah);
  }
}

mixin YunusTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 10) {
      return 'ywns';
    }

    return super.getTransliterate(surah);
  }
}

mixin HudTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 11) {
      return 'hwd';
    }

    return super.getTransliterate(surah);
  }
}

mixin YusufTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 12) {
      return 'ywsf';
    }

    return super.getTransliterate(surah);
  }
}

mixin RadTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 13) {
      return 'Alr~Ed';
    }

    return super.getTransliterate(surah);
  }
}

mixin IbrahimTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 14) {
      return 'Abr`hym';
    }

    return super.getTransliterate(surah);
  }
}

mixin HijrTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 15) {
      return 'AlHjr';
    }

    return super.getTransliterate(surah);
  }
}

mixin NahlTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 16) {
      return 'AlnHl';
    }

    return super.getTransliterate(surah);
  }
}

mixin IsraTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 17) {
      return "AlAsrA^'";
    }

    return super.getTransliterate(surah);
  }
}

mixin KahfTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 18) {
      return 'Alkhf';
    }

    return super.getTransliterate(surah);
  }
}

mixin MaryamTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 19) {
      return 'mrym';
    }

    return super.getTransliterate(surah);
  }
}

mixin TahaTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 20) {
      return 'T`h`';
    }

    return super.getTransliterate(surah);
  }
}

mixin AnbiyaTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 21) {
      return "AlAnbyA^'";
    }

    return super.getTransliterate(surah);
  }
}

mixin HajjTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 22) {
      return 'AlHj';
    }

    return super.getTransliterate(surah);
  }
}

mixin MukminunTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 23) {
      return 'Alm&mnwn';
    }

    return super.getTransliterate(surah);
  }
}

mixin NurTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 24) {
      return 'Aln~wr';
    }

    return super.getTransliterate(surah);
  }
}

mixin FurqanTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 25) {
      return 'AlfrqAn';
    }

    return super.getTransliterate(surah);
  }
}

mixin SyuaraTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 26) {
      return 'Al\$ErA^\'';
    }

    return super.getTransliterate(surah);
  }
}

mixin NamlTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 27) {
      return 'Alnml';
    }

    return super.getTransliterate(surah);
  }
}

mixin QasasTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 28) {
      return 'AlqSS';
    }

    return super.getTransliterate(surah);
  }
}

mixin AnkabutTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 29) {
      return 'AlEnkbwt';
    }

    return super.getTransliterate(surah);
  }
}

mixin RumTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 30) {
      return 'Alr~wm';
    }

    return super.getTransliterate(surah);
  }
}

mixin LuqmanTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 31) {
      return 'lqm`n';
    }

    return super.getTransliterate(surah);
  }
}

mixin SajdahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 32) {
      return 'Als~jdp';
    }

    return super.getTransliterate(surah);
  }
}

mixin AhzabTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 33) {
      return 'AlAHzAb';
    }

    return super.getTransliterate(surah);
  }
}

mixin SabaTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 34) {
      return 'sb>';
    }

    return super.getTransliterate(surah);
  }
}

mixin FatirTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 35) {
      return 'fATr';
    }

    return super.getTransliterate(surah);
  }
}

mixin YasinTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 36) {
      return 'y`s^';
    }

    return super.getTransliterate(surah);
  }
}

mixin SaffatTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 37) {
      return 'AlS~`^f~`t';
    }

    return super.getTransliterate(surah);
  }
}

mixin SadTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 38) {
      return 'S';
    }

    return super.getTransliterate(surah);
  }
}

mixin ZumarTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 39) {
      return 'Alzmr';
    }

    return super.getTransliterate(surah);
  }
}

mixin GafirTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 40) {
      return 'gAfr';
    }

    return super.getTransliterate(surah);
  }
}

mixin FussilatTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 41) {
      return 'fS~lt';
    }

    return super.getTransliterate(surah);
  }
}

mixin SyuraTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 42) {
      return 'Al\$wrY';
    }

    return super.getTransliterate(surah);
  }
}

mixin ZukhrufTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 43) {
      return 'Alzxrf';
    }

    return super.getTransliterate(surah);
  }
}

mixin DukhanTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 44) {
      return 'AldxAn';
    }

    return super.getTransliterate(surah);
  }
}

mixin JasiyahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 45) {
      return 'AljAvyp';
    }

    return super.getTransliterate(surah);
  }
}

mixin AhqafTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 46) {
      return 'AlAHqAf';
    }

    return super.getTransliterate(surah);
  }
}

mixin MuhammadTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 47) {
      return 'mHm~d';
    }

    return super.getTransliterate(surah);
  }
}

mixin FathTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 48) {
      return 'AlftH';
    }

    return super.getTransliterate(surah);
  }
}

mixin HujuratTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 49) {
      return 'AlHjr`t';
    }

    return super.getTransliterate(surah);
  }
}

mixin QafTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 50) {
      return 'q';
    }

    return super.getTransliterate(surah);
  }
}

mixin ZariyatTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 51) {
      return 'Al*~`ry`t';
    }

    return super.getTransliterate(surah);
  }
}

mixin TurTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 52) {
      return 'AlTwr';
    }

    return super.getTransliterate(surah);
  }
}

mixin NajmTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 53) {
      return 'Alnjm';
    }

    return super.getTransliterate(surah);
  }
}

mixin QamarTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 54) {
      return 'Alqmr';
    }

    return super.getTransliterate(surah);
  }
}

mixin RahmanTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 55) {
      return 'AlrHmn';
    }

    return super.getTransliterate(surah);
  }
}

mixin WaqiahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 56) {
      return 'AlwAqEp';
    }

    return super.getTransliterate(surah);
  }
}

mixin HadidTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 57) {
      return 'AlHdyd';
    }

    return super.getTransliterate(surah);
  }
}

mixin MujadalahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 58) {
      return 'AlmjAdlp';
    }

    return super.getTransliterate(surah);
  }
}

mixin HasyrTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 59) {
      return 'AlH\$r';
    }

    return super.getTransliterate(surah);
  }
}

mixin MumtahanahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 60) {
      return 'AlmmtHnp';
    }

    return super.getTransliterate(surah);
  }
}

mixin SaffTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 61) {
      return 'AlS~f~';
    }

    return super.getTransliterate(surah);
  }
}

mixin JumuahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 62) {
      return 'AljmEp';
    }

    return super.getTransliterate(surah);
  }
}

mixin MunafiqunTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 63) {
      return 'Almn`fqwn';
    }

    return super.getTransliterate(surah);
  }
}

mixin TagabunTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 64) {
      return 'AltgAbn';
    }

    return super.getTransliterate(surah);
  }
}

mixin TalaqTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 65) {
      return 'AlTlAq';
    }

    return super.getTransliterate(surah);
  }
}

mixin TahrimTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 66) {
      return 'AltHrym';
    }

    return super.getTransliterate(surah);
  }
}

mixin MulkTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 67) {
      return 'Almlk';
    }

    return super.getTransliterate(surah);
  }
}

mixin QalamTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 68) {
      return 'Alqlm';
    }

    return super.getTransliterate(surah);
  }
}

mixin HaqqahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 69) {
      return 'AlHA^q~p';
    }

    return super.getTransliterate(surah);
  }
}

mixin MaarijTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 70) {
      return 'AlmEArj';
    }

    return super.getTransliterate(surah);
  }
}

mixin NuhTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 71) {
      return 'nwH';
    }

    return super.getTransliterate(surah);
  }
}

mixin JinnTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 72) {
      return 'Aljn';
    }

    return super.getTransliterate(surah);
  }
}

mixin MuzzamilTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 73) {
      return 'Almz~m~l';
    }

    return super.getTransliterate(surah);
  }
}

mixin MuddassirTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 74) {
      return 'Almd~v~r';
    }

    return super.getTransliterate(surah);
  }
}

mixin QiyamahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 75) {
      return 'Alqy`mp';
    }

    return super.getTransliterate(surah);
  }
}

mixin InsanTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 76) {
      return 'AlAnsAn';
    }

    return super.getTransliterate(surah);
  }
}

mixin MursalatTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 77) {
      return 'Almrsl`t';
    }

    return super.getTransliterate(surah);
  }
}

mixin NabaTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 78) {
      return 'Alnb>';
    }

    return super.getTransliterate(surah);
  }
}

mixin NaziatTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 79) {
      return 'Aln~`zE`t';
    }

    return super.getTransliterate(surah);
  }
}

mixin AbasaTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 80) {
      return 'Ebs';
    }

    return super.getTransliterate(surah);
  }
}

mixin TakwirTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 81) {
      return 'Altkwyr';
    }

    return super.getTransliterate(surah);
  }
}

mixin InfitarTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 82) {
      return 'AlAnfTAr';
    }

    return super.getTransliterate(surah);
  }
}

mixin MutaffifinTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 83) {
      return 'AlmTf~fyn';
    }

    return super.getTransliterate(surah);
  }
}

mixin InsyiqaqTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 84) {
      return 'AlAn\$qAq';
    }

    return super.getTransliterate(surah);
  }
}

mixin BurujTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 85) {
      return 'Albrwj';
    }

    return super.getTransliterate(surah);
  }
}

mixin TariqTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 86) {
      return 'AlTArq';
    }

    return super.getTransliterate(surah);
  }
}

mixin AklaTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 87) {
      return 'AlAElY';
    }

    return super.getTransliterate(surah);
  }
}

mixin GasyiyahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 88) {
      return 'AlgA\$yp';
    }

    return super.getTransliterate(surah);
  }
}

mixin FajrTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 89) {
      return 'Alfjr';
    }

    return super.getTransliterate(surah);
  }
}

mixin BaladTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 90) {
      return 'Albld';
    }

    return super.getTransliterate(surah);
  }
}

mixin SyamsTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 91) {
      return 'Al\$ms';
    }

    return super.getTransliterate(surah);
  }
}

mixin LailTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 92) {
      return 'Al~yl';
    }

    return super.getTransliterate(surah);
  }
}

mixin DuhaTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 93) {
      return 'AlDHY';
    }

    return super.getTransliterate(surah);
  }
}

mixin SyarhTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 94) {
      return 'Al\$rH';
    }

    return super.getTransliterate(surah);
  }
}

mixin TinTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 95) {
      return 'Altyn';
    }

    return super.getTransliterate(surah);
  }
}

mixin AlaqTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 96) {
      return 'AlElq';
    }

    return super.getTransliterate(surah);
  }
}

mixin QadrTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 97) {
      return 'Alqdr';
    }

    return super.getTransliterate(surah);
  }
}

mixin BayyinahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 98) {
      return 'Alby~np';
    }

    return super.getTransliterate(surah);
  }
}

mixin ZalzalahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 99) {
      return 'Alzlzlp';
    }

    return super.getTransliterate(surah);
  }
}

mixin AdiyatTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 100) {
      return 'AlE`dy`t';
    }

    return super.getTransliterate(surah);
  }
}

mixin QariahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 101) {
      return 'AlqArEp';
    }

    return super.getTransliterate(surah);
  }
}

mixin TakasurTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 102) {
      return 'AltkAvr';
    }

    return super.getTransliterate(surah);
  }
}

mixin AsrTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 103) {
      return 'AlESr';
    }

    return super.getTransliterate(surah);
  }
}

mixin HumazahTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 104) {
      return 'Alhmzp';
    }

    return super.getTransliterate(surah);
  }
}

mixin FilTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 105) {
      return 'Alfyl';
    }

    return super.getTransliterate(surah);
  }
}

mixin QuraisyTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 106) {
      return 'qry\$';
    }

    return super.getTransliterate(surah);
  }
}

mixin MaunTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 107) {
      return 'AlmAEwn';
    }

    return super.getTransliterate(surah);
  }
}

mixin KausarTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 108) {
      return 'Alkwvr';
    }

    return super.getTransliterate(surah);
  }
}

mixin KafirunTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 109) {
      return 'Alk`frwn';
    }

    return super.getTransliterate(surah);
  }
}

mixin NasrTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 110) {
      return 'AlnSr';
    }

    return super.getTransliterate(surah);
  }
}

mixin LahabTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 111) {
      return 'Allhb';
    }

    return super.getTransliterate(surah);
  }
}

mixin IkhlasTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 112) {
      return 'AlAxlAS';
    }

    return super.getTransliterate(surah);
  }
}

mixin FalaqTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 113) {
      return 'Alflq';
    }

    return super.getTransliterate(surah);
  }
}

mixin NasTransliterate on SurahTransliterate {
  @override
  String getTransliterate(int surah) {
    if (surah == 114) {
      return 'AlnAs';
    }

    return super.getTransliterate(surah);
  }
}
