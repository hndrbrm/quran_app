// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';

import 'surah_latin.dart';

abstract class QuranBinder {
  const QuranBinder();
}

class Quran extends QuranBinder with
  Surah, SurahLatin,
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
  IkhlasLatin, FalaqLatin, NasLatin
{
  const Quran._();

  static Quran get instance => _instance;
  static const Quran _instance = Quran._();
}

mixin Surah on QuranBinder {}
