// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';
import 'package:quran_app/quran/surah_translate.dart';

import 'surah_latin.dart';

abstract class QuranBinder {
  const QuranBinder();
}

class Quran extends QuranBinder with
  Surah, SurahLatin, SurahTranslate,
  FatihahLatin, BaqarahLatin, ImranLatin, NisaLatin, MaidahLatin, AnamLatin,
  ArafLatin, AnfalLatin, TaubahLatin, YunusLatin, HudLatin, YusufLatin,
  RadLatin, IbrahimLatin, HijrLatin, NahlLatin, IsraLatin, KahfLatin,
  MaryamLatin, TahaLatin, AnbiyaLatin, HajjLatin, MukminunLatin, NurLatin,
  FurqanLatin, SyuaraLatin, NamlLatin, QasasLatin, AnkabutLatin, RumLatin,
  LuqmanLatin, SajdahLatin, AhzabLatin, SabaLatin, FatirLatin, YasinLatin,
  SaffatLatin, SadLatin, ZumarLatin, GafirLatin, FussilatLatin, SyuraLatin,
  ZukhrufLatin, DukhanLatin, JasiyahLatin, AhqafLatin, MuhammadLatin, FathLatin,
  HujuratLatin, QafLatin, ZariyatLatin, TurLatin, NajmLatin, QamarLatin,
  RahmanLatin, WaqiahLatin, HadidLatin, MujadalahLatin, HasyrLatin,
  MumtahanahLatin, SaffLatin, JumuahLatin, MunafiqunLatin, TagabunLatin,
  TalaqLatin, TahrimLatin, MulkLatin, QalamLatin, HaqqahLatin, MaarijLatin,
  NuhLatin, JinnLatin, MuzzamilLatin, MuddassirLatin, QiyamahLatin, InsanLatin,
  MursalatLatin, NabaLatin, NaziatLatin, AbasaLatin, TakwirLatin, InfitarLatin,
  MutaffifinLatin, InsyiqaqLatin, BurujLatin, TariqLatin, AklaLatin,
  GasyiyahLatin, FajrLatin, BaladLatin, SyamsLatin, LailLatin, DuhaLatin,
  SyarhLatin, TinLatin, AlaqLatin, QadrLatin, BayyinahLatin, ZalzalahLatin,
  AdiyatLatin, QariahLatin, TakasurLatin, AsrLatin, HumazahLatin, FilLatin,
  QuraisyLatin, MaunLatin, KausarLatin, KafirunLatin, NasrLatin, LahabLatin,
  IkhlasLatin, FalaqLatin, NasLatin,
  FatihahTranslate, BaqarahTranslate, ImranTranslate, NisaTranslate,
  MaidahTranslate, AnamTranslate, ArafTranslate, AnfalTranslate, TaubahTranslate,
  YunusTranslate, HudTranslate, YusufTranslate, RadTranslate, IbrahimTranslate,
  HijrTranslate, NahlTranslate, IsraTranslate, KahfTranslate, MaryamTranslate,
  TahaTranslate, AnbiyaTranslate, HajjTranslate, MukminunTranslate, NurTranslate,
  FurqanTranslate, SyuaraTranslate, NamlTranslate, QasasTranslate,
  AnkabutTranslate, RumTranslate, LuqmanTranslate, SajdahTranslate,
  AhzabTranslate, SabaTranslate, FatirTranslate, YasinTranslate, SaffatTranslate,
  SadTranslate, ZumarTranslate, GafirTranslate, FussilatTranslate,
  SyuraTranslate, ZukhrufTranslate, DukhanTranslate, JasiyahTranslate,
  AhqafTranslate, MuhammadTranslate, FathTranslate, HujuratTranslate,
  QafTranslate, ZariyatTranslate, TurTranslate, NajmTranslate, QamarTranslate,
  RahmanTranslate, WaqiahTranslate, HadidTranslate, MujadalahTranslate,
  HasyrTranslate, MumtahanahTranslate, SaffTranslate, JumuahTranslate,
  MunafiqunTranslate, TagabunTranslate, TalaqTranslate, TahrimTranslate,
  MulkTranslate, QalamTranslate, HaqqahTranslate, MaarijTranslate, NuhTranslate,
  JinnTranslate, MuzzamilTranslate, MuddassirTranslate, QiyamahTranslate,
  InsanTranslate, MursalatTranslate, NabaTranslate, NaziatTranslate,
  AbasaTranslate, TakwirTranslate, InfitarTranslate, MutaffifinTranslate,
  InsyiqaqTranslate, BurujTranslate, TariqTranslate, AklaTranslate,
  GasyiyahTranslate, FajrTranslate, BaladTranslate, SyamsTranslate,
  LailTranslate, DuhaTranslate, SyarhTranslate, TinTranslate, AlaqTranslate,
  QadrTranslate, BayyinahTranslate, ZalzalahTranslate, AdiyatTranslate,
  QariahTranslate, TakasurTranslate, AsrTranslate, HumazahTranslate,
  FilTranslate, QuraisyTranslate, MaunTranslate, KausarTranslate,
  KafirunTranslate, NasrTranslate, LahabTranslate, IkhlasTranslate,
  FalaqTranslate, NasTranslate
{
  const Quran._();

  static Quran get instance => _instance;
  static const Quran _instance = Quran._();
}

mixin Surah on QuranBinder {}
