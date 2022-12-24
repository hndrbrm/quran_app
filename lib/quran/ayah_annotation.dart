// Copyright 2022 The Im team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:meta/meta.dart';
import 'quran.dart';

mixin AyahAnnotation implements Ayah {
  @protected
  @mustCallSuper
  String getAyahAnnotation(int surah, int ayah) => '';
}

mixin FatihahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '1) Allah Swt. disebut rabb (Tuhan) seluruh alam karena Dialah yang telah menciptakan, memelihara, mendidik, mengatur, mengurus, memberi rezeki, dan sebagainya kepada semua makhluk-Nya.',
    '',
    '2) Yaumid-dīn (hari Pembalasan) adalah hari ketika kelak manusia menerima balasan atas amal-amalnya yang baik dan yang buruk. Hari itu disebut juga yaumul-qiyāmah (hari Kiamat), yaumul-ḥisāb (hari Penghitungan), dan sebagainya.',
    '',
    '3) Jalan yang lurus adalah jalan hidup yang benar dan sesuai dengan ajaran Islam yang terkandung dalam Al-Qur’an dan hadis.',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 1) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin BaqarahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '4) Dalam Al-Qur’an terdapat 29 surah yang dibuka dengan huruf Arab yang muqaṭṭa‘ah (dibaca nama hurufnya), seperti Alif lām mīm, Alif lām rā, dan sebagainya. Hanya Allah Swt. yang mengetahui makna sesungguhnya dari rangkaian huruf-huruf tersebut. Namun, dilihat dari fungsinya, ada yang berpendapat bahwa rangkaian huruf-huruf itu bertujuan untuk menarik perhatian atau untuk menunjukkan kemukjizatan Al-Qur’an.',
    '',
    '',
    '',
    '',
    '',
    '5) Allah Swt. telah mengunci hati dan telinga orang kafir sehingga nasihat atau hidayah tidak bisa masuk ke dalam hatinya.',
    '',
    '',
    '6) Penyakit hati yang dimaksud adalah keraguan tentang kebenaran agama Islam, kemunafikan, atau kebencian terhadap kenabian Rasulullah saw.',
    '7) Di antara bentuk kerusakan di atas bumi adalah kekufuran, kemaksiatan, menyebarkan rahasia orang mukmin, dan memberikan loyalitas kepada orang kafir. Melanggar nilai-nilai yang ditetapkan agama akan mengakibatkan alam ini rusak, bahkan hancur.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '8) Maksudnya adalah bahwa pengetahuan dan kekuasaan Allah Swt. meliputi orang-orang kafir.',
    '',
    '',
    '',
    '',
    '',
    '',
    '9) Makhluk yang kecil yang dikira lemah, seperti nyamuk, semut, lebah, laba-laba, atau lainnya, sebenarnya banyak menyimpan hikmah untuk menjadi pelajaran bagi manusia.|10) Seseorang menjadi sesat karena keingkarannya dan tidak mau memahami petunjuk-petunjuk Allah Swt. Dalam ayat ini dijelaskan bahwa mereka ingkar dan tidak mau memahami mengapa Allah Swt. menjadikan nyamuk sebagai perumpamaan. Akibatnya, mereka menjadi sesat.|11) Orang fasik adalah orang yang melanggar ketentuan-ketentuan agama, baik dengan ucapan maupun perbuatan.',
    '',
    '',
    '12) Langit yang bermakna ruang di luar bumi dengan segala isinya (bulan, planet, komet, bintang, galaksi) yang jumlahnya tidak berhingga (disimbolkan dengan ungkapan tujuh langit) sesungguhnya terus berevolusi. Banyak bintang yang mati, namun banyak juga bintang yang lahir. Adapun yang dimaksud dengan menyempurnakan adalah terus berlangsungnya proses pembentukan bintang-bintang baru sejak pembentukan alam semesta.',
    '13) Dalam Al-Qur’an, kata khalīfah memiliki makna ‘pengganti’, ‘pemimpin’, ‘penguasa’, atau ‘pengelola alam semesta’.',
    '',
    '',
    '',
    '14) Iblis, sebagaimana malaikat, juga menerima perintah dari Allah untuk bersujud kepada Adam. Iblis berasal dari golongan jin.',
    '15) Setan menipu Nabi Adam a.s. bahwa siapa yang memakan buah pohon itu akan kekal di dalam surga (lihat surah Ṭāhā/20: 120).|16) Yaitu orang yang berbuat aniaya yang mengakibatkan kerugian bagi dirinya sendiri atau orang lain.',
    '17) Nabi Adam a.s. dan Hawa memakan buah pohon yang dilarang itu sehingga diusir Allah Swt. dari surga dan diturunkan ke dunia.',
    '18) Yang dimaksud dengan beberapa kalimat pada ayat ini adalah ucapan untuk memohon ampunan (tobat) dari Allah Swt., seperti disebut dalam surah al-A‘rāf/7: 23.',
    '',
    '',
    '19) Israil adalah nama lain Nabi Ya‘qub a.s. Oleh karena itu, Bani Israil adalah keturunan Nabi Ya‘qub a.s. yang sekarang dikenal sebagai bangsa Yahudi.|20) Di antara janji Bani Israil kepada Allah Swt. ialah hanya menyembah-Nya, tidak menyekutukan-Nya, dan beriman kepada Nabi Muhammad saw. sebagaimana yang tersebut di dalam Taurat.',
    '',
    '21) Yang dimaksud dengan kebatilan adalah kesalahan, kejahatan, kemungkaran, dan sebagainya.',
    '',
    '',
    '',
    '',
    '',
    '22) Syafaat ialah pertolongan yang, antara lain, diberikan oleh malaikat, para nabi, atau orang-orang mukmin pilihan atas izin Allah Swt. untuk meringankan azab seseorang atau bebannya di akhirat.',
    '23) Fir‘aun adalah gelar bagi raja-raja Mesir Kuno. Menurut sebagian ahli sejarah, Fir‘aun pada masa Nabi Musa a.s. adalah Menepthan (1232–1224 SM) yang dikenal dengan Ramses II.',
    '24) Allah Swt. memberikan mukjizat kepada Nabi Musa a.s. dengan memberinya jalan untuk dilintasi melalui tersibaknya laut. Belum ada penjelasan ilmiah tentang mekanismenya. Bisa jadi, Nabi Musa a.s. dan kaumnya menyeberang melintasi celah teluk yang sempit tepat saat laut surut maksimum akibat purnama atau bulan baru sehingga memunculkan daratan untuk dilintasi. Sekitar 6 jam kemudian, rombongan Fir‘aun mengejar. Saat di tengah, air laut mulai pasang dan menenggelamkan mereka semua.',
    '25) Allah Swt. menjanjikan bahwa waktu munajat Nabi Musa a.s. untuk menerima petunjuk (Taurat) adalah empat puluh malam. Akan tetapi, umatnya tidak sabar menunggunya sehingga mereka menyembah patung anak sapi yang dibuat oleh Samiri.',
    '',
    '26) Yang dimaksud adalah kumpulan wahyu yang disebut Taurat dan berfungsi sebagai furqān, yaitu pembeda antara hak dan batil.',
    '27) Menurut sebagian mufasir, perintah untuk membunuh diri pada ayat ini berarti perintah bagi orang yang tidak menyembah patung anak sapi untuk membunuh orang yang menyembahnya. Namun, perintah itu bisa pula dipahami sebagai perintah kepada orang-orang yang menyembah patung anak sapi itu untuk saling membunuh atau membunuh diri mereka sendiri sebagai bentuk tobat kepada Allah.',
    '',
    '',
    '28) Manna ialah sejenis madu, sedangkan salwa ialah sejenis burung puyuh.',
    '',
    '',
    '',
    '',
    '29) Sabiin adalah umat terdahulu yang percaya kepada Tuhan Yang Maha Esa, tetapi tidak memeluk agama tertentu.|30) Ayat ini merupakan ketentuan umum bagi setiap umat pada masa mereka masing-masing. Misalnya, umat Yahudi pada masa Nabi Musa a.s. dan umat Nasrani pada masa Nabi Isa a.s.',
    '',
    '',
    '',
    '',
    '31) Kata jahil bisa berarti ‘bodoh’, ‘meyakini sesuatu yang tidak benar’, atau ‘melakukan perbuatan yang tidak layak dikerjakan’.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '32) Dalam Al-Qur’an, kata fitnah digunakan untuk menyatakan sejumlah makna sesuai dengan konteksnya, seperti ‘ujian’, ‘cobaan’, ‘azab’, ‘menghalangi kebenaran’, dan ‘mengusir orang dari kampung halamannya’.',
    '',
    '33) Rā‘inā berarti ‘perhatikanlah kami’. Akan tetapi, orang Yahudi memelesetkan ucapannya sehingga menjadi ‘ru‘ūnah’ yang berarti ‘bodoh sekali’ sebagai ejekan kepada Rasulullah. Oleh karena itu, Allah Swt. menyuruh para sahabat untuk memakai kata unẓurnā sebagai ganti kata rā‘inā karena keduanya mempunyai makna yang sama.',
    '',
    '',
    '',
    '34) Bani Israil pernah meminta kepada Nabi Musa a.s. agar dapat melihat Allah Swt. dengan mata kepala mereka, dibuatkan berhala untuk disembah, dan lain-lain.',
    '',
    '',
    '35) Orang Yahudi mengatakan bahwa mereka saja yang akan masuk surga. Orang Nasrani pun meyakini bahwa hanya merekalah yang akan masuk surga.',
    '',
    '',
    '',
    '36) Wajah Allah (wajhullāh) bisa berarti ‘Zat Allah Swt’. atau ‘rida Allah Swt.’, sedangkan yang dimaksud di sini adalah arah kiblat yang diridai oleh Allah Swt. saat seseorang tidak bisa menentukan arah kiblat karena alasan tertentu. Maksud ini tergambar dalam sebab nuzul yang dituturkan oleh ‘Amir bin Rabi‘ah r.a. Dia berkata, “Kami menemani Rasulullah saw. dalam sebuah perjalanan. Tiba-tiba langit tertutup mendung sehingga kami kesulitan menentukan arah kiblat. Kami pun salat dan memberi tanda (pada arah salat kami). Ketika matahari muncul, kami sadar telah salat tanpa menghadap ke arah kiblat. Kami laporkan hal ini kepada Rasulullah, lalu turunlah ayat ini.” (Riwayat Ibnu Majah, al-Baihaqi, dan at-Tirmizi).',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '37) Maqam Ibrahim adalah tempat beliau berdiri saat membangun Ka‘bah. Namun, ada juga yang memahaminya sebagai Masjidilharam secara umum, sebagaimana ada juga yang memahaminya sebagai tempat beliau pernah salat.',
    '',
    '',
    '',
    '38) Di antara arti hikmah adalah sunah, pemahaman yang mendalam atas ajaran agama, kebenaran, pembicaraan yang akurat, rasa takut kepada Allah Swt., kenabian, risalah, akal, dan keserasian antara pengetahuan dan pengamalan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '39 Sibgah Allah berarti ‘celupan Allah Swt.’. Maksudnya adalah iman kepada Allah Swt. yang tidak disertai dengan kemusyrikan. Istilah itu digunakan karena iman menyatu dalam hati seperti menyatunya warna pada bahan yang dicelupkan dan pengaruh celupan itu tampak pada pakaian sebagaimana pengaruh iman tampak pada diri seorang mukmin.',
    '',
    '',
    '',
    '',
    '40) Umat pertengahan berarti umat pilihan, terbaik, adil, dan seimbang, baik dalam keyakinan, pikiran, sikap, maupun perilaku.',
    '41) Orang-orang yang diberi kitab adalah kaum Yahudi dengan kitab Tauratnya dan Kaum Nasrani dengan kitab Injilnya (lihat surah al-Baqarah/2: 105).',
    '',
    '42) Orang-orang Yahudi dan Nasrani sangat mengenal kenabian dan sifat-sifat Nabi Muhammad saw. karena telah disebutkan secara gamblang dalam Taurat dan Injil.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '43) Yang dimaksud dengan syiar adalah simbol-simbol keagungan agama Allah Swt.|44) Sai berarti berjalan dan berlari-lari kecil tujuh kali antara Safa dan Marwah ketika melakukan ibadah haji atau umrah. Ungkapan tidak ada dosa dimaksudkan untuk menghilangkan keberatan sebagian sahabat untuk mengerjakan sai karena Safa dan Marwah merupakan bekas tempat berhala.|45) Maksud Allah Swt. mensyukuri hamba-Nya adalah memberi pahala atas amalnya, memaafkan kesalahannya, menambah nikmatnya dan sebagainya.',
    '',
    '46) Maksudnya adalah melakukan amal-amal saleh untuk menghilangkan keburukan yang diakibatkan oleh kesalahan-kesalahannya dan menjelaskan kebenaran yang disembunyikannya.',
    '',
    '',
    '',
    '47) Pergantian malam dan siang akibat rotasi bumi menggerakkan udara secara global berupa angin. Dengan angin, kapal dapat bergerak menggunakan layar. Angin pula yang menggerakkan uap air dari lautan hingga membentuk awan lalu mendorongnya ke daratan hingga tercurah sebagai hujan. Dengan hujan itu, tumbuhlah tumbuhan yang menghidupi beragam jenis hewan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '48) Perintah untuk memberikan kebaikan dengan cara yang baik berlaku untuk kedua belah pihak, baik pembunuh maupun wali korban pembunuhan.',
    '',
    '49) Menurut mayoritas ulama, ayat ini dinasakh dengan ayat waris dan hadis “lā waṣiyyata li wāriṡin” (Tidak ada wasiat bagi ahli waris).',
    '',
    '50) Maksud mendamaikan di sini ialah menyuruh orang yang berwasiat untuk berlaku adil dalam berwasiat sesuai dengan ketentuan agama.',
    '',
    '51) Siapa yang memberi makan kepada lebih dari seorang miskin untuk sehari, itu lebih baik.',
    '',
    '',
    '',
    '',
    '52) Bulan sabit adalah bukti meyakinkan pergantian bulan. Setelah bulan sabit akhir bulan tampak tipis seperti pelepah kurma (surah Yāsīn/36: 39) menjelang pagi, pada malam berikutnya bulan ‘mati’ (tidak tampak sama sekali), kemudian disusul tampaknya bulan sabit tipis sesaat setelah magrib. Itulah awal bulan yang digunakan untuk perhitungan waktu ibadah, seperti puasa Ramadan dan haji.',
    '',
    '53) Fitnah dalam ayat ini berarti perbuatan yang menimbulkan kekacauan, seperti mengusir orang dari kampung halamannya, merampas harta, menyakiti orang lain, menghalangi orang dari jalan Allah Swt., atau melakukan kemusyrikan (lihat catatan kaki surah al-Baqarah/2: 102).',
    '',
    '',
    '54) Maksudnya adalah bahwa jika diserang pada bulan haram, umat Islam diperbolehkan untuk membalas serangan pada bulan itu juga.|55) Sesuatu yang dihormati dapat berarti bulan haram, yaitu Zulkaidah, Zulhijah, Muharam, dan Rajab; tanah haram (Makkah), dan dalam keadaan berihram.',
    '',
    '56) Hadyu adalah hewan ternak yang disembelih di tanah haram Makkah pada Iduladha dan hari-hari tasyrik karena menjalankan haji tamattu’ atau qiran, meninggalkan salah satu manasik haji atau umrah, mengerjakan salah satu larangan manasik, atau murni ingin mendekatkan diri kepada Allah Swt. sebagai ibadah sunah.|57) Fidyah (tebusan) karena tidak dapat menyempurnakan manasik haji dengan alasan tertentu.',
    '58) Waktu yang dimaklumi untuk pelaksanaan ibadah haji ialah Syawal, Zulkaidah, dan 10 malam pertama Zulhijah.|59) Rafaṡ berarti ‘mengeluarkan perkataan yang menimbulkan birahi, perbuatan yang tidak senonoh, atau hubungan seks’.',
    '60) Yang dimaksud dengan Masyarilharam adalah bukit Quzah di Muzdalifah. Akan tetapi, telah disepakati bahwa Muzdalifah secara keseluruhan dapat digunakan sebagai tempat mabīt.',
    '',
    '',
    '',
    '',
    '61) Maksud zikir di sini ialah membaca takbir, tasbih, tahmid, dan sebagainya. Maksud beberapa hari yang berbilang ialah hari tasyrik, yaitu tiga hari setelah Iduladha (tanggal 11, 12, dan 13 Zulhijah).|62) Mempercepat pada ayat ini berarti meninggalkan Mina pada tanggal 12 Zulhijah sebelum matahari terbenam (nafar awwal). Adapun mengakhirkannya berarti meninggalkan Mina pada tanggal 13 Zulhijah (nafar ṡāni).',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '63) Jihad secara umum berarti mencurahkan segala kemampuan, baik harta maupun raga untuk memperjuangkan agama Allah Swt. dengan niat yang ikhlas karena Allah Swt.',
    '64) Khamar adalah segala sesuatu yang mengandung unsur yang memabukkan.',
    '',
    '',
    '65) Haid adalah darah yang keluar bersama jaringan yang dipersiapkan untuk pembuahan di rahim perempuan. Keluarnya secara periodik, sesuai dengan periode pelepasan sel telur ke rahim. Kondisi seperti itu yang dianggap kotor dan menjadikan perempuan tidak suci secara syar‘i, termasuk tidak suci untuk digauli suaminya.',
    '66) Istri diumpamakan sebagai ladang, tempat menanam benih. Maka, tanamlah benih itu sesuai waktu yang disukai.',
    '',
    '67) Allah Swt. Maha Penyantun (halīm) berarti tidak segera menyiksa orang yang berbuat dosa.',
    '',
    '',
    '',
    '68) Ayat ini menjadi dasar hukum khulu‘ dan penerimaan ‘iwaḍ. Khulu‘ yaitu hak istri untuk bercerai dari suaminya dengan membayar ‘iwaḍ (uang tebusan) melalui pengadilan.',
    '',
    '69) Idah ialah masa menunggu (tidak boleh menikah) bagi perempuan karena perceraian atau kematian suaminya.',
    '70) Maksudnya adalah menikah lagi, baik dengan bekas suaminya maupun laki-laki yang lain.',
    '',
    '71) Setelah masa idah selesai, perempuan boleh berhias, bepergian, atau menerima pinangan.',
    '72) Perempuan yang boleh dipinang secara sindiran ialah perempuan yang dalam masa idah karena ditinggal mati oleh suaminya atau karena talak bā’in, sedangkan perempuan yang dalam idah talak raj‘iy (bisa dirujuk) tidak boleh dipinang, walaupun dengan sindiran.',
    '73)  Mut‘ah yang dimaksud adalah pemberian suami kepada istri yang diceraikannya sebagai pelipur, di samping nafkah yang wajib ditunaikannya sesuai dengan kemampuannya.',
    '74) Yang dimaksud dengan orang yang memiliki kewenangan nikah adalah suami atau wali. Jika yang membebaskan mahar adalah wali, suami dibebaskan dari kewajiban membayar separuh mahar. Apabila suami yang membebaskannya, dalam arti berkomitmen untuk membayar seluruh mahar yang disebutkan, dia harus membayar mahar seluruhnya. Namun, wali yang boleh bertindak demikian hanyalah wali mujbir, yaitu wali yang berhak memaksa anak gadis untuk menikah, seperti ayah atau kakek kandung.',
    '75) Menurut pendapat yang masyhur, salat Wusṭā adalah salat Asar.',
    '',
    '',
    '',
    '',
    '',
    '',
    '76) Maksud memberi pinjaman kepada Allah Swt. adalah menginfakkan harta di jalan-Nya.',
    '77) Mereka diusir dari kampung halaman dan anak-anak mereka ditawan.',
    '',
    '78) Tabut ialah peti tempat menyimpan Taurat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '79) Kata tagut disebutkan untuk setiap yang melampaui batas dalam keburukan. Oleh karena itu, setan, dajal, penyihir, penetap hukum yang bertentangan dengan hukum Allah Swt., dan penguasa yang tirani dinamakan tagut.',
    '',
    '',
    '80) Sains tidak bisa menjelaskan bagaimana orang yang ditidurkan selama seratus tahun dan makanannya tetap dalam keadaan utuh seperti sedia kala, sementara keledainya telah menjadi tulang belulang, lalu tulang belulang itu dikumpulkan dan atas kuasa Allah Swt. dapat hidup kembali.',
    '81) Sains tidak bisa menjelaskan bagaimana burung yang telah dipotong-potong dan bagian-bagian tubuhnya disebar di tempat-tempat yang saling berjauhan dapat dihidupkan kembali oleh Allah Swt.',
    '',
    '',
    '',
    '',
    '82) Diumpamakan dengan dataran tinggi karena dataran tinggi yang lebih dingin berpotensi mendapatkan awan hujan lebih banyak daripada dataran rendah sehingga tanamannya lebih subur. Kalaupun tidak ada hujan lebat, gerimis pun cukup untuk membasahi tanahnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 2) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin ImranAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '83) Berawal dari sel telur yang dibuahi, janin secara bertahap tumbuh membentuk organ-organ tubuh di dalam rahim.',
    '84)  Ayat muhkamat adalah ayat yang maksudnya terang, tegas, dan dapat dipahami dengan mudah.|85)  Ayat mutasyabihat adalah ayat yang mengandung beberapa pengertian, sulit dipahami, atau hanya Allah yang mengetahui.',
    '',
    '',
    '',
    '',
    '',
    '86) Pertempuran antara dua golongan yang dimaksudkan oleh ayat ini terjadi antara kaum muslim dan kaum musyrik pada Perang Badar tahun ke-2 Hijriah di barat daya Madinah.',
    '',
    '',
    '',
    '',
    '',
    '',
    '87) Kata umi yang dimaksud dalam ayat ini adalah orang yang tidak mendapat kitab suci.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '88) Kata auliyā’ adalah bentuk jamak dari kata waliy. Secara harfiah kata ini berarti ‘dekat’ sehingga menunjukkan makna ‘teman dekat’, ‘teman akrab’, ‘teman setia’, ‘kekasih’, ‘penolong’, ‘sekutu’, ‘pelindung’, ‘pembela’, dan ‘pemimpin’. Kata waliy dan auliya’ dalam Al-Qur’an diulang 41 kali. Maknanya berbeda-beda sesuai dengan konteks ayat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '89) Istri Imran yang merupakan ibunda Maryam adalah Hanna binti Faqud. Nabi Zakaria a.s. menikahi saudari perempuan Hanna sehingga Maryam adalah keponakannya.',
    '',
    '',
    '',
    '90) Membenarkan kedatangan seorang nabi yang diciptakan dengan kata kun (‘jadilah!’) tanpa ayah, yaitu Nabi Isa a.s.',
    '',
    '',
    '',
    '',
    '91) Maksudnya, para tokoh agama di Baitulmaqdis mengundi siapa yang akan mengurus Maryam dengan melemparkan pena yang biasa mereka gunakan untuk menulis Taurat atau dengan melempar anak panah.',
    '',
    '',
    '',
    '92) Maksud kitab di sini adalah menulis dengan tangan.|93) Lihat catatan kaki surah al-Baqarah/2: 129.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '94) Mubahalah berarti setiap pihak yang berselisih berdoa dengan sungguh-sungguh agar Allah menjatuhkan laknat kepada pihak yang berdusta. Nabi Muhammad saw. mengajak utusan Nasrani Najran bermubahalah, tetapi mereka tidak berani. Hal ini menjadi bukti kebenaran akidah Islam tentang Isa a.s.',
    '',
    '',
    '',
    '95) Orang Yahudi dan Nasrani masing-masing menganggap bahwa Nabi Ibrahim a.s. itu dari golongannya. Lalu, Allah membantah mereka dengan alasan bahwa Nabi Ibrahim a.s. itu datang sebelum mereka.',
    '96) Perkara yang diketahui oleh Ahlulkitab adalah perihal Nabi Musa a.s., Nabi Isa a.s., dan Nabi Muhammad saw.|97) Perkara yang tidak diketahui oleh Ahlulkitab adalah perihal Nabi Ibrahim a.s.',
    '98)  Hanif berarti jauh dari syirik (mempersekutukan Allah) dan jauh dari kesesatan.',
    '',
    '',
    '99) Maksudnya adalah ayat-ayat Allah yang diturunkan kepada Nabi Muhammad saw.',
    '100) Mencampuradukkan antara hak dan batil maksudnya adalah mencampuradukkan antara ayat-ayat Tuhan yang disampaikan oleh para nabi dengan takwilan-takwilan batil yang dikemukakan oleh para pemuka agama mereka.|101) Yang dimaksud dengan menyembunyikan kebenaran adalah menutupi firman Tuhan yang dibawa oleh para nabi, yang berisi ajaran tauhid dan berita gembira tentang kedatangan Nabi Muhammad saw.',
    '',
    '102) Yakni kepada orang yang seagama dengan kamu (Yahudi atau Nasrani) agar mereka tidak masuk Islam atau kepada orang-orang Yahudi atau Nasrani yang sudah telanjur masuk Islam agar iman mereka guncang dan kembali pada agama mereka semula.',
    '',
    '103) Pengertian umi dapat dilihat pada catatan kaki ayat ke-20. Mereka beranggapan bahwa mereka boleh memperoleh harta dengan cara menipu orang-orang yang tidak seagama dengan mereka. Menurut mereka, Allah Swt. membolehkan cara semacam itu. Hal ini tidak benar karena menipu adalah perbuatan yang dilarang oleh agama.',
    '',
    '',
    '',
    '',
    '',
    '104) Para nabi berjanji kepada Allah Swt. bahwa apabila datang seorang rasul bernama Muhammad, mereka akan beriman kepadanya dan menolongnya. Perjanjian para nabi ini mengikat pula umatnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '105) Setelah Taurat diturunkan, ada beberapa makanan yang diharamkan bagi mereka sebagai hukuman (lihat surah an-Nisā’/4: 160 dan al-An‘ām/6: 146).',
    '106) Kebohongan terhadap Allah Swt. ialah pernyataan bahwa sebelum Taurat diturunkan, Allah Swt. telah mengharamkan beberapa makanan kepada Bani Israil.',
    '',
    '107) Ahlulkitab mengatakan bahwa rumah ibadah yang pertama dibangun adalah yang berada di Baitulmaqdis. Oleh karena itu, Allah Swt. membantahnya karena yang benar adalah yang ada di Makkah.',
    '108) Lihat catatan kaki surah al-Baqarah/2: 125.|109) Kriteria mampu adalah sanggup mendapatkan perbekalan, alat transportasi, sehat jasmani, perjalanan aman, dan keluarga yang ditinggalkan terjamin kehidupannya.',
    '',
    '110) Maksud menyaksikan adalah mengetahui bahwa agama yang diridai Allah Swt. adalah agama Islam.',
    '',
    '',
    '',
    '',
    '111) Makruf adalah segala kebaikan yang diperintahkan oleh agama serta bermanfaat untuk kebaikan individu dan masyarakat. Mungkar adalah setiap keburukan yang dilarang oleh agama serta merusak kehidupan individu dan masyarakat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '112) Yaitu Ahlulkitab yang telah memeluk agama Islam.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '113) Peristiwa ini terjadi pada Perang Uhud pada tahun ke-3 H.',
    '114) Kedua golongan itu adalah Bani Salamah dari suku Khazraj dan Bani Harisah dari suku Aus yang sama-sama menjadi bagian dari barisan kaum muslim.',
    '115) Perang Badar terjadi ketika umat Islam jumlahnya sedikit dan perlengkapan perangnya kurang.',
    '',
    '',
    '',
    '116) Maksudnya adalah bahwa tujuh puluh pemimpin kafir terbunuh dan tujuh puluh orang lainnya ditawan.',
    '117) Menurut riwayat al-Bukhari, ayat ini turun karena Nabi Muhammad saw. berdoa kepada Allah Swt. agar menyelamatkan sebagian pemuka kaum musyrik dan membinasakan sebagian lainnya.',
    '',
    '118) Riba dalam ayat ini dimaksudkan sebagai utang-piutang yang ketika tidak bisa dibayar pada waktu jatuh tempo, pengutang diberi tambahan waktu, tetapi dengan ganti berupa penambahan jumlah yang harus dilunasinya. Menurut para ulama, riba nasiah ini haram, walaupun jumlah penambahannya tidak berlipat ganda.',
    '',
    '',
    '',
    '',
    '119) Perbuatan keji (fāḥisyah) adalah dosa besar yang akibatnya tidak hanya menimpa diri sendiri, tetapi juga menimpa orang lain, seperti zina dan riba. Adapun yang dimaksud dengan menzalimi diri sendiri adalah perbuatan dosa yang akibatnya hanya menimpa diri sendiri, baik besar maupun kecil.',
    '',
    '120) Yang dimaksud dengan sunah Allah di sini adalah kehendak dan hukum Allah yang berlaku dalam kehidupan manusia.',
    '',
    '',
    '',
    '',
    '121) Lihat catatan kaki surah al-Baqarah/2: 218.',
    '',
    '122) Nabi Muhammad saw. adalah utusan Allah Swt. Para rasul sebelumnya telah wafat. Oleh karena itu, Nabi Muhammad saw. juga akan wafat seperti halnya para rasul terdahulu. Pada waktu perang Uhud berkecamuk, tersiar berita bahwa Nabi Muhammad saw. wafat terbunuh. Berita ini mengacaukan umat Islam sehingga ada yang ingin meminta pelindungan Abu Sufyan (pemimpin kaum Quraisy). Sementara itu, orang-orang munafik mengatakan bahwa kalau Nabi Muhammad saw. itu betul seorang Nabi, tentu tidak akan wafat terbunuh. Maka, Allah Swt. menurunkan ayat ini untuk menenteramkan kaum muslim dan membantah perkataan orang munafik.',
    '',
    '',
    '123) Tindakan yang berlebihan adalah sikap melampaui batas-batas hukum yang telah ditetapkan Allah Swt.',
    '124) Pahala dunia dapat berupa kemenangan, harta rampasan, pujian, dan lain-lain.',
    '',
    '',
    '',
    '125) Berselisih dalam urusan Nabi berarti melaksanakan perintah Nabi Muhammad saw. agar regu pemanah tetap bertahan pada tempat yang telah ditetapkan dalam keadaan bagaimanapun. |126) Yakni kemenangan dan harta rampasan.|127) Maksudnya adalah bahwa kaum muslim tidak berhasil mengalahkan mereka.',
    '128) Kesedihan kaum muslim disebabkan ketidaktaatan mereka terhadap perintah Rasul yang berujung pada kekalahan pada Perang Uhud.',
    '129) Yakni orang-orang Islam yang kuat keyakinannya.|130) Yakni orang-orang Islam yang masih ragu-ragu.|131) Yang dimaksud dengan sangkaan jahiliah adalah menganggap bahwa apabila Nabi Muhammad saw. itu benar-benar utusan Allah Swt., tentu tidak akan terkalahkan atau terbunuh dalam peperangan.',
    '132) Yaitu pasukan kaum muslim dan pasukan kaum musyrik dalam Perang Uhud.',
    '',
    '133) Maksudnya adalah meninggal di jalan Allah Swt. bukan karena peperangan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '134) Maksudnya adalah hidup di alam yang lain, bukan di alam dunia. Mereka mendapatkan berbagai kenikmatan di sisi Allah Swt. Hanya Allahlah yang mengetahui bagaimana keadaan hidup di alam lain itu.',
    '135)Maksudnya adalah teman-temannya yang masih hidup dan tetap berjihad di jalan Allah.',
    '',
    '',
    '',
    '',
    '136) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '137) Maksudnya adalah jangan mengira bahwa usia yang panjang bagi orang kafir itu baik. Jika tidak digunakan untuk beramal saleh, makin panjang usia, makin buruk baginya.',
    '138) Maksudnya adalah campur baurnya kaum muslim dengan kaum munafik.|139) Dalam Perang Uhud, Allah Swt. membedakan antara orang baik (umat Islam) dan orang yang buruk (kaum munafik).|140)  Di antara yang gaib adalah pengetahuan tentang keimanan dan kemunafikan seseorang.|141) Di antara orang yang Allah Swt. kehendaki untuk dapat mengetahui kemunafikan dalam hati seseorang adalah Nabi Muhammad saw.',
    '',
    '',
    '',
    '',
    '142) Zubur adalah lembaran-lembaran kalam suci, seperti suhuf Nabi Ibrahim a.s. dan Nabi Musa a.s.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 3) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin NisaAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '143) Ayat ini menegaskan bahwa Nabi Adam a.s. dan Hawa tidak diciptakan melalui proses evolusi hayati seperti makhluk hidup lainnya, tetapi diciptakan secara khusus seorang diri, lalu diciptakanlah pasangannya dari dirinya. Mekanismenya tidak dapat dijelaskan secara sains. Selanjutnya, barulah anak-anaknya lahir dari proses biologis secara berpasangan-pasangan sesuai kehendak-Nya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '144) Maksudnya adalah kerabat yang tidak mempunyai hak waris dari harta warisan.|145) Pemberian sekadarnya tidak boleh lebih dari sepertiga harta warisan.',
    '',
    '',
    '146) Bagian laki-laki adalah dua kali bagian perempuan karena kewajiban laki-laki lebih berat daripada perempuan, seperti kewajiban membayar maskawin dan memberi nafkah (lihat surah an-Nisā’/4: 34).',
    '147) Menyusahkan ahli waris dapat terjadi dengan melakukan tindakan-tindakan seperti mewasiatkan lebih dari sepertiga harta peninggalan dan memberikan wasiat dengan maksud mengurangi harta warisan, meskipun kurang dari sepertiga harta warisan.',
    '',
    '',
    '148) Kata keji dalam ayat ini berarti perbuatan zina. Akan tetapi, menurut pendapat lain, kata ini mencakup juga perbuatan mesum yang lain, seperti hubungan sejenis dan yang semisalnya.|149) Yang dimaksud dengan jalan yang lain adalah dengan turunnya surah an-Nūr/24: 2 tentang hukum dera.',
    '',
    '',
    '',
    '150) Ayat ini tidak mengandung arti kebolehan menjadikan istri sebagai warisan seperti harta, meskipun tidak dengan paksaan. Menurut tradisi jahiliah, anak tertua atau anggota keluarganya yang lain dapat mewarisi janda yang ditinggal wafat ayahnya.',
    '',
    '',
    '',
    '151) Yang dimaksud dengan ibu pada awal ayat ini adalah ibu, nenek, dan seterusnya ke atas, sedangkan anak perempuan adalah anak perempuan, cucu perempuan, dan seterusnya ke bawah. Yang dimaksud dengan anak-anak istrimu yang dalam pemeliharaanmu, menurut sebagian besar ulama, mencakup anak tiri yang tidak dalam pemeliharaannya.',
    '152) Maksudnya adalah hamba sahaya perempuan yang dimiliki karena tertawan. Sementara itu, suaminya tidak ikut tertawan bersamanya (lihat surah an-Nisā’/4: 3).|153) Maksudnya adalah bahwa istri boleh tidak menuntut suaminya untuk membayar sebagian atau keseluruhan maskawin yang telah ditetapkan atau suami membayar lebih dari maskawin yang telah ditetapkannya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '154) Sebagai kepala keluarga, suami bertanggung jawab untuk melindungi, mengayomi, mengurusi, dan mengupayakan kemaslahatan keluarga.|155) Maksud nusyuz adalah perbuatan seorang istri meninggalkan kewajibannya, seperti meninggalkan rumah tanpa rida suaminya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '156) Menurut jumhur, kata menyentuh pada ayat ini adalah bersentuhan kulit, sedangkan sebagian mufasir mengartikannya sebagai berhubungan suami istri.',
    '',
    '',
    '157) Lihat catatan kaki surah al-Baqarah/2: 104.',
    '',
    '',
    '',
    '',
    '158) Jibt adalah setan dan apa saja yang disembah selain Allah Swt., sedangkan tagut biasanya disebutkan untuk orang yang keburukannya melampaui batas (lihat catatan kaki surah al-Baqarah/2: 256).',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '159) Rasul tidak bertanggung jawab atas perbuatan-perbuatan mereka dan tidak menjamin agar mereka tidak berbuat kesalahan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '160) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '161) Ayat ini diturunkan berkenaan dengan beberapa orang muslim yang tidak ikut hijrah ke Madinah dan terpaksa ikut dalam Perang Badar di pihak pasukan musyrik, kemudian mereka terbunuh dalam perang itu (Riwayat al-Bukhari).',
    '',
    '',
    '',
    '',
    '162) Salah satu cara salat khauf adalah jamaah dibagi menjadi dua kelompok. Apabila imam telah menyelesaikan satu rakaat bersama kelompok pertama, kelompok kedua melakukan rakaat itu dan imam dalam keadaan menunggu. Begitu selanjutnya secara bergantian hingga kedua kelompok tersebut melakukan salam bersama dengan imam.|163) Tata cara salat khauf yang dijelaskan pada ayat ini dipraktikkan dalam kondisi yang masih memungkinkan untuk mengerjakan salat. Apabila tidak memungkinkan, salat dikerjakan sedapat-dapatnya.',
    '',
    '',
    '164) Ayat ini diturunkan terkait dengan kasus pencurian yang dilakukan oleh Tu‘mah. Dia menyembunyikan barang curiannya di rumah seorang Yahudi dan menuduh orang itulah yang telah mencurinya. Ketika kerabat-kerabat Tu‘mah meminta agar Nabi Muhammad saw. membela Tu‘mah dan menghukum orang Yahudi itu, Nabi Muhammad saw. hampir terpengaruh, tetapi Allah Swt. menurunkan ayat ini dan melarangnya untuk membela pengkhianat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '165) Maksudnya, setan akan berusaha menyesatkan manusia, kecuali orang-orang mukmin pilihan Allah Swt. (lihat surah al-Ḥijr/15: 40 dan Saba’/34: 20).',
    '166) Maksudnya, setan benar-benar akan menyesatkan manusia dengan mengharamkan binatang ternak yang dihalalkan Allah Swt. atau menghalalkan yang diharamkan Allah Swt., seperti dalam kepercayaan Arab Jahiliah tentang baḥirah, sā’ibah, waṣīlah, dan ḥām (lihat surah al-Mā’idah/5: 103).|167) Mengubah ciptaan Allah bisa berarti mengubah fisik, seperti mengganti jenis kelamin, atau mengubah ciptaan dalam batin manusia, seperti mengubah fitrah (Islam) dengan menganut agama lain.',
    '',
    '',
    '',
    '168) Kata angan-anganmu dalam ayat ini menurut sebagian ahli tafsir merujuk kepada umat Islam, tetapi ada juga yang meyakini bahwa kata itu merujuk kepada kaum musyrik. Maksudnya adalah bahwa pahala di akhirat tidak menurut angan-angan mereka, tetapi sesuai dengan ketentuan agama.',
    '',
    '',
    '',
    '169) Lihat surah an-Nisā’/4: 2‒3.|170) Menurut adat Arab Jahiliah, seorang wali berkuasa atas perempuan yatim yang dalam asuhannya dan berkuasa atas hartanya. Jika perempuan yatim itu cantik, wali akan menikahi dan menguasai hartanya. Jika perempuan yatim itu buruk rupanya, wali menghalanginya menikah dengan laki-laki lain agar dia tetap dapat menguasai hartanya. Ayat ini melarang kebiasaan itu.',
    '171) Lihat arti nusyuz bagi pihak istri dalam catatan kaki surah an-Nisā’/4: 34. Nusyuz dari pihak suami ialah bersikap keras terhadap istrinya, tidak mau menggaulinya, dan tidak mau memberikan haknya.|172) Contohnya, istri bersedia dikurangi beberapa haknya asal suami mau kembali berbaik-baik dengannya.|173) Sudah menjadi tabiat manusia untuk enggan melepaskan sebagian haknya kepada orang lain dengan seikhlas hatinya. Kendatipun demikian, jika istri melepaskan sebagian haknya, suami diperbolehkan menerimanya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '174) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '',
    '',
    '175) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '176) Lihat catatan kaki surah al-Baqarah/2: 160.',
    '177) Allah Maha Mensyukuri berarti memberi pahala terhadap amal hamba-Nya, memaafkan kesalahannya, menambah nikmat-Nya, dan lain-lain.',
    '178) Orang yang dizalimi boleh mengemukakan kepada hakim atau penguasa tentang keburukan-keburukan orang yang menzaliminya.',
    '',
    '179) Maksud membeda-bedakan dalam ayat ini adalah hanya beriman kepada Allah Swt., tetapi tidak beriman kepada rasul-rasul-Nya.',
    '',
    '',
    '180) Ahlulkitab yang dimaksud pada ayat ini adalah orang-orang Yahudi.|181) Patung anak sapi itu mereka buat dari emas untuk disembah.',
    '182) Pengangkatan gunung itu dimaksudkan sebagai ancaman kepada Bani Israil agar selalu menepati janji mereka untuk melaksanakan ajaran Taurat.',
    '183) Mereka disambar petir, dijelmakan menjadi kera, dan sebagainya.',
    '',
    '184) Ayat ini merupakan bantahan terhadap anggapan Ahlulkitab bahwa Nabi Isa a.s. meninggal di tiang salib.',
    '185)Ayat ini sebagai bantahan terhadap anggapan orang Yahudi bahwa mereka telah membunuh Nabi Isa a.s.',
    '186)Menurut ayat ini, setiap orang Yahudi dan Nasrani, pada saat sakratulmaut, akan beriman bahwa Nabi Isa a.s. adalah utusan Allah Swt. dan bukan anak Allah, tetapi keimanannya itu sudah tidak berguna lagi.',
    '',
    '',
    '',
    '',
    '187) Di antara keistimewaan Nabi Musa a.s. adalah dapat berbicara dengan Allah Swt. secara langsung sehingga disebut kalīmullāh. Semua nabi yang lain menerima firman Allah Swt. melalui perantaraan Jibril, kecuali Nabi Muhammad saw. yang dapat berbicara langsung dengan Allah Swt. pada waktu mikraj.',
    '',
    '',
    '',
    '',
    '',
    '',
    '188) Termasuk berlebihan adalah mengatakan bahwa Nabi Isa a.s. itu tuhan sebagaimana dikatakan oleh orang Nasrani.|189) Maksud kalimat adalah kun (‘jadilah!’), sehingga Nabi Isa a.s. diciptakan tanpa bapak.|190) Disebut tiupan dari Allah karena tiupan itu berasal dari perintah Allah Swt.',
    '',
    '',
    '',
    '',
    '191) Kalālah ialah orang yang wafat tanpa meninggalkan bapak dan anak.'
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 4) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MaidahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '192) Maksud janji di sini adalah janji kepada Allah Swt. untuk mengikuti ajaran-Nya dan janji kepada manusia dalam muamalah.',
    '193) Syiar-syiar kesucian Allah ialah segala amalan yang dilakukan dalam rangka ibadah haji, seperti tata cara melakukan tawaf dan sa’i, serta tempat-tempat mengerjakannya, seperti Ka‘bah, Safa, dan Marwah.|194) Bulan haram ialah Zulkaidah, Zulhijah, Muharam, dan Rajab. Pada bulan-bulan itu dilarang melakukan peperangan.|195) Hadyu ialah hewan yang disembelih sebagai pengganti (dam) pekerjaan wajib yang ditinggalkan atau sebagai denda karena melanggar hal-hal yang terlarang di dalam ibadah haji.|196) Qalā’id ialah hewan hadyu yang diberi kalung sebagai tanda bahwa hewan itu telah ditetapkan untuk dibawa ke Ka‘bah.|197)Yang dimaksud dengan karunia di sini ialah keuntungan yang diberikan Allah Swt. dalam perjalanan ibadah haji, sedangkan keridaan-Nya ialah pahala yang diberikannya atas ibadah haji.',
    '198) Hewan yang tercekik, dipukul, jatuh, ditanduk, dan diterkam binatang buas hukumnya halal apabila sempat disembelih sebelum mati.|199) Al-Azlām artinya ‘anak panah yang tidak memakai bulu’. Orang Arab Jahiliah menggunakannya untuk mengundi apakah melakukan sesuatu atau tidak. Mereka mengambil tiga buah anak panah: yang pertama ditulis “lakukanlah”, yang kedua ditulis “jangan lakukan”, dan yang ketiga dibiarkan kosong. Ketiganya lalu diletakkan dalam sebuah tempat dan disimpan di dalam Ka‘bah. Apabila hendak melakukan sesuatu, mereka meminta juru kunci Ka‘bah untuk mengambil sebuah anak panah. Mereka akan menaati apa pun yang tertulis pada anak panah yang terambil. Akan tetapi, jika yang terambil adalah anak panah yang kosong, mereka akan mengulang undian.|200) Maksud kata hari ini adalah pada waktu haji wada‘.',
    '201) Maksudnya adalah hewan buruan yang ditangkap oleh binatang pemburu yang sengaja dilepas oleh pemiliknya untuk berburu dan binatang pemburu itu tidak memakannya.',
    '',
    '202) Maksudnya, sakit yang membuatnya tidak boleh terkena air.|203) Lihat catatan kaki surah an-Nisā’/4: 43.',
    '204) Maksudnya, perjanjian untuk mendengar dan taat kepada Nabi Muhammad saw. dalam kondisi apa pun yang diikrarkan pada waktu baiat (sumpah setia).',
    '',
    '',
    '',
    '',
    '205) Pinjaman yang baik kepada Allah maksudnya adalah menginfakkan harta di jalan Allah Swt., baik infak wajib maupun sunah.',
    '206) Maksudnya, mengubah teks ayat dengan cara mendahulukan, mengakhirkan, menambahkan, atau mengurangi, dan memalingkan makna kalimat dari pemahaman yang sesungguhnya.',
    '',
    '207) Cahaya dari Allah Swt. maksudnya adalah Nabi Muhammad saw., sedangkan kitab suci maksudnya adalah Al-Qur’an.',
    '',
    '',
    '',
    '',
    '',
    '208) Maksudnya, tanah Palestina ditentukan Allah Swt. bagi kaum Yahudi selama mereka beriman dan taat kepada Allah Swt. Ketika Nabi Muhammad saw. sudah diutus Allah Swt., sementara mereka menolak untuk beriman kepadanya, ketentuan itu pupus bagi orang Yahudi.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '209) Sifat-sifat manusia yang dikhawatirkan malaikat (surah al-Baqarah/2: 30) mulai muncul pada anak Adam.',
    '210) Allah Swt. mengajarkan kepada manusia ilmu dan kemampuan untuk mengembangkan kehidupannya dengan mempelajari perilaku hewan, tumbuhan, dan fenomena alam lainnya.',
    '211) Maksudnya, membunuh seorang manusia sama dengan menghalalkan pembunuhan terhadap seluruh manusia. Sebaliknya, menjaga kehormatan seorang manusia sama dengan menjaga kehormatan seluruh manusia.',
    '212) Ayat ini berkenaan dengan penjelasan Allah Swt. tentang ḥirābah, yaitu tindak kekerasan secara terang-terangan untuk mengambil harta, membunuh, dan menimbulkan rasa takut, seperti perampokan dan terorisme.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '213) Orang yang tidak memutuskan perkara menurut hukum Allah Swt. ada tiga macam: a) karena benci dan ingkarnya kepada hukum Allah Swt., orang yang semacam ini kafir (surah al-Mā’idah/5: 44); b) karena menuruti hawa nafsu dan merugikan orang lain, dinamakan zalim (surah al-Mā’idah/5: 45); dan c) karena fasik, sebagaimana terdapat dalam ayat 47 surah ini.',
    '',
    '',
    '214) Hukum ini berlaku sampai Allah Swt. mengutus Nabi Muhammad saw.',
    '',
    '',
    '',
    '215) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '',
    '',
    '',
    '216) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '217) Sesuatu yang lebih buruk pembalasannya adalah menganggap salah keimanan kepada Allah Swt., Al-Qur’an, dan kitab suci yang diturunkan sebelumnya.-><-218) Laknat ini ditimpakan kepada orang-orang Yahudi yang melanggar kehormatan hari Sabat (lihat surah al-Baqarah/2: 65).',
    '',
    '',
    '',
    '',
    '',
    '219) Sebagai pahalanya, Allah Swt. akan memberikan rahmat-Nya dengan menurunkan hujan dan menghidupkan tumbuh-tumbuhan yang buahnya berlimpah ruah.',
    '220) Maksudnya, tidak seorang pun yang dapat membunuh Nabi Muhammad saw.',
    '',
    '',
    '221) Yakni janji untuk beriman kepada Allah Swt. dan rasul-rasul-Nya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '222) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '223) Yang dimaksud hewan buruan pada ayat ini adalah hewan yang boleh dimakan maupun tidak, kecuali burung gagak, burung elang, kalajengking, tikus, dan anjing buas, termasuk juga ular, dalam suatu riwayat.|224) Maksud sampai ke Ka‘bah pada ayat ini adalah yang dibawa sampai ke daerah haram untuk disembelih di sana dan dagingnya dibagikan kepada fakir miskin.|225) Membayar kafarat harus sepadan dengan harga hewan ternak pengganti hewan yang dibunuh itu.|226) Puasa yang dilakukan sama jumlah harinya dengan jumlah mud yang diberikan kepada fakir miskin, yaitu seharga hewan yang dibunuh, dengan catatan, seorang fakir miskin mendapat satu mud (lebih kurang 6,5 ons).|227) Maksud perbuatan yang telah lalu dalam ayat ini adalah membunuh hewan sebelum turun ayat yang mengharamkannya.',
    '228) Termasuk dalam pengertian laut di sini adalah sungai, danau, kolam, dan sebagainya.',
    '229) Ka‘bah dan sekitarnya menjadi tempat yang aman bagi manusia untuk mengerjakan urusan-urusan yang berhubungan dengan dunia dan akhirat serta menjadi pusat ibadah haji.',
    '',
    '',
    '',
    '',
    '',
    '230) Baḥīrah adalah unta betina yang telah beranak lima kali dan anak yang kelima itu jantan. Lalu, unta betina itu dibelah telinganya, dilepaskan, tidak boleh ditunggangi lagi, dan tidak boleh diambil air susunya.|231) Sā’ibah adalah unta betina yang dibiarkan pergi ke mana saja karena suatu nazar. Misalnya, jika orang Arab Jahiliah akan melakukan sesuatu atau perjalanan yang berat, dia biasa bernazar akan menjadikan untanya sā’ibah jika maksud atau perjalanannya berhasil dan selamat.|232) Menurut satu riwayat, waṣīlah adalah domba betina yang terlahir kembar dampit. Domba waṣīlah tidak boleh disembelih, sedangkan saudara kembarnya yang berkelamin jantan dipersembahkan pada berhala.|233) Ḥām adalah unta jantan yang tidak boleh diganggu-ganggu lagi karena telah dapat membuntingkan unta betina sepuluh kali. Perlakuan terhadap baḥīrah, sā’ibah, waṣīlah, dan ḥām ini adalah kepercayaan Arab Jahiliah.',
    '',
    '',
    '',
    '234) Berbuat dosa di sini maksudnya adalah melakukan kecurangan dalam persaksiannya yang diketahui setelah dia bersumpah.',
    '235) Maksud ungkapan ini adalah bahwa sumpah saksi-saksi yang berlainan agama itu ditolak dengan sumpah saksi-saksi yang berasal dari kerabat, atau bisa juga berarti bahwa orang-orang yang bersumpah itu akan mendapat balasan di dunia dan akhirat karena melakukan sumpah palsu.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 5) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin AnamAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '236) Ayat di sini berarti mukjizat, ayat Al-Qur’an, atau peristiwa-peristiwa yang terjadi di alam yang menunjukkan kekuasaan Allah Swt.',
    '',
    '',
    '',
    '237) Ungkapan ini adalah untuk menerangkan bahwa Nabi Muhammad saw. adalah seorang nabi.',
    '238) Kalau Allah Swt. mengutus malaikat sebagai rasul, tentu Dia mengutusnya dalam wujud manusia. Hal itu karena manusia tidak dapat melihat malaikat dan tentu mereka akan berkata, “Ini bukanlah malaikat, tetapi hanya manusia sebagaimana kami juga.” Jadi, mereka akan tetap ragu-ragu.',
    '',
    '',
    '239) Allah Swt. telah berjanji, sebagai tanda kemurahan-Nya, bahwa Dia akan melimpahkan rahmat kepada makhluk-Nya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '240) Yang dimaksud dengan kalimāt Allah adalah ketetapan-ketetapan-Nya yang sudah tertulis di Lauh Mahfuz. Di antaranya adalah bahwa mereka yang mendustakannya pasti akan hancur dan orang yang mengimaninya akan menang.',
    '',
    '241) Orang-orang kafir diserupakan dengan orang-orang yang mati karena mereka tidak mau mendengar seruan Allah Swt.',
    '',
    '242) Sebagai makhluk hidup, binatang mempunyai kemiripan biologis dengan manusia, bahkan sebagian mempunyai sistem sosial seperti masyarakat manusia dengan kepemimpinannya.|243) Sebagian mufasir menafsirkan kitab itu dengan Lauh Mahfuz sehingga kalimat ini menunjukkan bahwa nasib semua makhluk sudah dituliskan (ditetapkan) di dalamnya. Ada pula yang menafsirkannya dengan Al-Qur’an sehingga maknanya adalah bahwa Al-Qur’an telah memuat pokok-pokok agama, norma, hukum, hikmah, dan tuntunan untuk kebahagiaan manusia di dunia dan akhirat.',
    '244) Mereka yang disesatkan oleh Allah Swt. memang memilih jalan kekufuran, sedangkan mereka yang diberi petunjuk memang memilih jalan petunjuk.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '245) Ketika Rasulullah saw. sedang duduk-duduk bersama beberapa orang mukmin yang dianggap hina dan miskin oleh kaum Quraisy, datanglah beberapa pemuka Quraisy hendak berbicara dengan Rasulullah. Mereka enggan duduk bersama dengan orang mukmin itu dan mendesak beliau untuk mengusir orang-orang mukmin itu supaya mereka dapat berbicara dengan Rasulullah secara nyaman. Ayat ini turun sebagai teguran terhadap sikap tersebut.',
    '',
    '',
    '',
    '',
    '',
    '246) Maksudnya, tentu Allah Swt. menurunkan azab kepadamu sampai kamu binasa.',
    '',
    '',
    '',
    '',
    '',
    '',
    '247) Azab yang datang dari atas adalah hujan batu, sambaran petir, dan lain-lain. Adapun yang datang dari bawah adalah seperti gempa bumi dan banjir.|248) Allah Swt. menjelaskan tanda-tanda kekuasaan-Nya dalam berbagai rupa dengan cara yang berbeda-beda. Sebagian ulama menjelaskan bahwa tanda-tanda kekuasaan Allah itu berupa peringatan, kisah, hukum, dan lain-lain.',
    '249) Menurut sebagian mufasir, yang didustakan itu adalah Al-Qur’an.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '250) Sebagian mufasir meyakini bahwa yang dimaksud dengan abīhi adalah pamannya, bukan ayahnya.',
    '',
    '251) Apa yang dilakukan Nabi Ibrahim a.s. ini lebih tepat dipahami sebagai upayanya menanamkan akidah tauhid kepada kaumnya, bukan sebagai perjalanannya mencari Tuhan.',
    '',
    '',
    '',
    '',
    '252) Setelah Allah Swt. memperlihatkan tanda-tanda keagungan-Nya kepada Nabi Ibrahim a.s. sehingga imannya kepada Allah Swt. makin teguh (ayat 75), ia menuntun kaumnya menuju tauhid dengan mengikuti logika berpikir mereka.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '253) Kalimat ini diucapkan sebagai sindiran kepada mereka, seakan-akan mereka dipandang sebagai kanak-kanak yang belum berakal.',
    '',
    '',
    '',
    '',
    '',
    '',
    '254) Menurut sebagian mufasir, yang dimaksud tempat menetap adalah tulang sulbi bapak dan tempat menyimpan adalah rahim ibu. Ada pula yang berpendapat bahwa tempat menetap adalah permukaan bumi pada waktu manusia masih hidup dan tempat menyimpan adalah perut bumi (kuburan) pada waktu manusia telah mati.',
    '',
    '255) Mereka mengatakan bahwa Allah Swt. mempunyai anak, sebagaimana orang Yahudi mengatakan bahwa Uzair adalah putra Allah Swt. dan orang-orang musyrik mengatakan bahwa malaikat merupakan anak-anak perempuan Allah Swt. Mereka mengatakan demikian karena kebodohannya.',
    '',
    '',
    '',
    '256) Siapa yang mengetahui kebenaran dan mengerjakan kebajikan serta memperoleh petunjuk, dia telah mencapai puncak kebahagiaan.',
    '',
    '',
    '',
    '',
    '257) Orang musyrik bersumpah bahwa jika mukjizat dari Allah datang, mereka akan beriman. Oleh karena itu, orang mukmin berharap agar Nabi memohon kepada Allah Swt. untuk menurunkan mukjizat yang dimaksud. Maka, Allah Swt. menolak harapan orang-orang mukmin itu dengan ayat ini.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '258) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '259) Menurut sebagian mufasir, akābira mujrimīhā artinya adalah ‘para penjahat besar’.',
    '',
    '',
    '',
    '',
    '260) Tentang makna kata waliy dan auliyā’, silakan lihat catatan kaki surah Āli ‘Imrān/3: 28.|261) Masing-masing telah merasakan kesenangan dari pihak lain. Pihak jin setan merasa bahagia karena berhasil menyesatkan manusia, sedangkan manusia merasa senang mengikuti bujukan jin dan leluasa merasakan kenikmatan duniawi.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '262) Mereka membagi hasil tanaman dan ternak menjadi tiga bagian: satu bagian untuk mereka sendiri, satu bagian untuk Allah Swt., dan satu bagian untuk berhala mereka. Jika bagian untuk berhala tersebut menguntungkan, mereka tidak akan menguranginya sedikit pun untuk dipersembahkan kepada Allah Swt. Sebaliknya, jika bagian yang mereka persembahkan untuk Allah Swt. menguntungkan, mereka akan mengambil sebagiannya untuk dipersembahkan pada berhala.',
    '263) Sebagian orang Arab adalah penganut syariat Nabi Ibrahim a.s. Nabi Ibrahim a.s. pernah diperintah Allah Swt. untuk mengurbankan anaknya, Ismail. Kemudian, sejumlah pemuka agama mereka mengaburkan pengertian berkurban itu sehingga dapat menanamkan rasa memandang baik membunuh anak-anak mereka dengan alasan mendekatkan diri kepada Allah Swt. Padahal, alasan yang sesungguhnya adalah karena takut miskin dan takut ternoda.',
    '',
    '',
    '',
    '',
    '',
    '',
    '264) Maksud diharamkan pada ayat 143 dan 144 ini adalah bahwa hewan-hewan itu diharamkan karena akan dipersembahkan pada berhala-berhala mereka.',
    '',
    '265) Yang dimaksud hewan berkuku di sini adalah hewan yang jari-jarinya tidak saling terpisah, seperti unta, itik, dan angsa. Sebagian mufasir mengartikannya dengan hewan yang berkuku tunggal, seperti kuda dan keledai.',
    '',
    '',
    '',
    '',
    '266) Yaitu yang dibenarkan oleh syariat, seperti kisas, hukuman mati bagi orang murtad, dan rajam.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 6) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin ArafAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '267) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '268) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '269) Maksud kata melakukan kekejian di sini adalah syirik, tawaf bertelanjang di sekeliling Ka‘bah, dan sebagainya.',
    '',
    '270) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '271) Maksudnya, doa dan amal mereka tidak diterima oleh Allah Swt.|272) Maksudnya, mereka tidak mungkin masuk surga sebagaimana unta mustahil masuk ke dalam lubang jarum.',
    '',
    '',
    '',
    '',
    '',
    '273) Kata a‘rāf adalah bentuk jamak dari ‘urf yang berarti ‘sesuatu yang tinggi’ atau ‘sesuatu yang terhormat’. Pembatas antara surga dan neraka disebut dengan a‘rāf karena posisinya yang tinggi.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '274) Allah menciptakan alam semesta dalam enam masa yang prosesnya sepanjang sejarah alam semesta, seperti yang dijelaskan dalam surah an-Nāzi‘āt/79: 27‒33.|275) Bersemayam di atas ʻArasy adalah satu sifat Allah yang wajib diimani sesuai dengan keagungan Allah Swt. dan kesucian-Nya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '276) Madyan pada mulanya adalah nama putra Nabi Ibrahim a.s. dari istri beliau yang ketiga, Qatura. Madyan menikah dengan putri Nabi Lut a.s. Selanjutnya, kata Madyan dipakai sebagai sebutan bagi suku yang berasal dari keturunan Madyan. Mereka tinggal di pantai Laut Merah sebelah tenggara Gurun Sinai, yaitu antara Hijaz, tepatnya Tabuk Saudi Arabia dan Teluk Aqabah.|277) Yakni perbaikan melalui syariat dan aturan yang dibawa oleh para nabi dan dilanjutkan oleh para penerusnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '278) Mereka langsung bersujud kepada Allah Swt. karena meyakini bahwa seruan Nabi Musa a.s. itu benar dan bukanlah sihir sebagaimana dugaan mereka semula.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '279) Seiring runtuhnya kerajaan Fir‘aun, negeri Syam, Mesir, dan sekitarnya yang dahulu dikuasai Fir‘aun kini diwarisi oleh Bani Israil.|280) Yang dimaksud dengan bangunan-bangunan Fir‘aun yang dihancurkan Allah Swt. adalah bangunan-bangunan yang mereka dirikan dengan memperbudak Bani Israil, seperti kota Ramses, menara yang dibangun Haman atas perintah Fir‘aun.',
    '',
    '',
    '',
    '',
    '',
    '281) Menurut sebagian mufasir, yang ditampakkan itu adalah kebesaran dan kekuasaan Allah Swt. Sementara itu, sebagian yang lain menafsirkan bahwa yang tampak itu adalah cahaya-Nya. Bagaimanapun juga, tampaknya Allah Swt. tidaklah seperti tampaknya makhluk. Tampaknya Allah mestilah sesuai dengan sifat-sifat-Nya yang tidak dapat diukur dengan pikiran manusia.',
    '',
    '282) Lauh adalah kepingan dari batu atau kayu yang bertuliskan kitab Taurat yang diterima Nabi Musa a.s. setelah bermunajat di Gunung Sinai.|283) Utamakanlah hal-hal yang wajib dahulu daripada yang sunah dan mubah.|284) Allah Swt. akan memperlihatkan negeri orang-orang fasik seperti Fir‘aun, ‘Ad, dan Samud yang hancur bersama mereka akibat kejahatan dan kefasikan mereka.',
    '',
    '',
    '285) Mereka membuat patung anak sapi dari emas. Menurut sebagian mufasir, suara yang menyerupai suara sapi itu muncul akibat embusan angin yang masuk ke dalam rongga patung itu dengan teknik yang dikenal oleh Samiri waktu itu. Sebagian lagi menafsirkan bahwa patung itu benar-benar menjadi tubuh sapi yang bernyawa dan mengeluarkan suara.',
    '',
    '286) Maksud pertanyaan ini adalah mempertanyakan ketidaksabaran menanti kedatangan Nabi Musa a.s. kembali setelah bermunajat kepada Tuhan, sehingga kaumnya membuat patung anak sapi untuk disembah sebagaimana menyembah Allah Swt.',
    '',
    '',
    '',
    '',
    '287) Perbuatan mereka membuat patung anak sapi dan menyembahnya itu adalah suatu cobaan dari Allah Swt. untuk menguji mereka, siapa yang kuat imannya dan siapa yang ragu-ragu. Orang yang lemah imannya mengikuti Samiri dan menyembah patung anak sapi itu. Akan tetapi, orang yang kuat imannya tetap teguh pendiriannya.',
    '',
    '288) Dalam syariat Nabi Muhammad saw. tidak ada lagi beban berat yang dipikulkan kepada Bani Israil, seperti ketentuan membunuh diri untuk bertobat, kewajiban kisas pada pembunuhan yang disengaja dan tidak tanpa adanya alternatif membayar diat (ganti rugi), memotong anggota badan yang melakukan kesalahan, dan membuang atau menggunting kain yang terkena najis.',
    '',
    '289) Mereka memberi petunjuk dan menuntun dengan berpedoman pada petunjuk dan tuntunan Allah Swt. Dalam hal mengadili perkara, mereka selalu mencari keadilan dengan berpedoman pada petunjuk dan tuntunan Allah Swt.',
    '290) Lihat catatan kaki surah al-Baqarah/2: 57.',
    '',
    '291) Mereka diperintah untuk mengucap, “ḥiṭṭah” (yang artinya ‘lepaskanlah kami dari dosa’), tetapi mereka mengubah sambil mencemooh dan mengucapkannya menjadi, “ḥinṭah” (yang artinya ‘gandum’).',
    '292) Negeri dekat laut di sini adalah kota Eilah yang terletak di pantai Laut Merah, antara kota Madyan dan Gunung Sinai.|293) Menurut aturan, mereka tidak boleh bekerja pada hari Sabat karena hari itu dikhususkan untuk beribadah. Aturan ini ditetapkan oleh Allah Swt. kepada orang-orang Yahudi sesuai dengan permintaan mereka. Mereka dilarang mengail ikan pada hari itu, tetapi sebagian mereka melanggar dengan cara yang licik. Mereka tidak mengail, tetapi menggali kolam sehingga air masuk bersama ikan ke dalamnya dan mereka menangkapinya pada hari berikutnya.',
    '294) Yakni alasan bahwa mereka telah melaksanakan perintah Allah Swt. untuk memberi peringatan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '295) Supaya orang-orang musyrik itu tidak mengatakan bahwa nenek moyang mereka dahulu telah mempersekutukan Tuhan, sedangkan mereka tidak tahu-menahu bahwa mempersekutukan Tuhan itu salah. Mereka tidak dapat berkilah bahwa yang mereka lakukan hanyalah meniru nenek moyang mereka sehingga mereka tidak patut disiksa.',
    '',
    '',
    '',
    '',
    '',
    '',
    '296) Jangan hiraukan orang-orang yang menyembah Allah Swt. dengan menyebut nama-nama yang tidak sesuai dengan sifat-sifat keagungan-Nya atau dengan memakai Asmaulhusna, tetapi dengan maksud menodai nama Allah Swt. atau mempergunakan Asmaulhusna untuk nama-nama selain Allah Swt.',
    '',
    '297) Pembiaran tersebut dicontohkan seperti orang yang berbuat maksiat, tetapi hidupnya terlihat makin sukses, sehingga dia makin berani berbuat maksiat. Dia tidak sadar bahwa apa yang dia lakukan justru menuntunnya menuju kebinasaan.',
    '',
    '',
    '',
    '298) Lihat catatan kaki surah al-Baqarah/2: 26.',
    '',
    '',
    '299) Hal ini tidak berkenaan dengan Nabi Adam, melainkan dengan sebagian keturunannya.',
    '300) Dalam pandangan orang musyrik, kelahiran anak mereka bukan semata-mata karunia Allah Swt., tetapi juga atas berkat berhala-berhala yang mereka sembah. Oleh karena itulah, mereka menamakan anak-anak mereka dengan Abdul Uzza, Abdu Manat, Abdusy Syams, dan sebagainya.',
    '',
    '',
    '',
    '',
    '301) Kata yabṭisyūn di sini bermakna ‘keras’, maksudnya ‘menampar’, ‘merusak’, ‘memukul dengan kasar’, dan sebagainya.',
    '',
    '',
    '',
    '',
    '302) Berlindung dengan membaca “Aʻużu billāhi minasy syaiṭānir rajīm”.',
    '',
    '',
    '',
    '',
    '',
    '303) Ini adalah salah satu ayat sajdah yang disunahkan bagi kita untuk bersujud setelah membaca atau mendengarnya, baik di dalam salat maupun di luar salat. Sujud ini dinamakan sujud tilawah.'
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 7) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin AnfalAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '304) Menyebut nama Allah Swt. di sini berarti menyebut sifat-sifat yang mengagungkan dan memuliakan-Nya.',
    '',
    '',
    '305) Sebagian sahabat Nabi keberatan dengan ketentuan pembagian harta rampasan perang, sebagaimana mereka keberatan dengan perintah Allah Swt. untuk melaksanakan Perang Badar.',
    '',
    '306) Dua golongan tersebut adalah kafilah Abu Sufyan yang membawa dagangan dari Syam dan pasukan bersenjata yang datang dari Makkah di bawah pimpinan ‘Utbah bin Rabi‘ah dan Abu Jahal.',
    '',
    '',
    '',
    '',
    '307) Ini terjadi dalam peperangan. Sasaran yang mematikan adalah leher. Akan tetapi, apabila lawan memakai baju besi sehingga sulit dikalahkan, tangannyalah yang dilumpuhkan agar tidak dapat memegang senjata supaya mudah ditawan.',
    '',
    '',
    '',
    '',
    '308) Peristiwa ini terkait Perang Badar sebagaimana diriwayatkan oleh Ibnu Abbas. Dia bercerita bahwa ketika Perang Badar berkecamuk, Nabi Muhammad saw. berkata kepada Ali, “Ambilkan aku segenggam pasir!” Ali segera mengambil pasir tersebut dan menyerahkannya kepada beliau. Lalu, beliau melemparkan pasir itu ke muka para musuh sehingga tidak seorang pun yang matanya luput darinya. Oleh karena itu, hancurlah mereka.” (Riwayat aṭ-Ṭabrani).',
    '',
    '',
    '',
    '',
    '',
    '309) Pengandaian dalam ayat ini bukan berarti Allah Swt. tidak tahu. Ayat ini justru menegaskan kemahatahuan-Nya bahwa tidak ada kebaikan pada diri mereka.',
    '310) Seruan tersebut berupa panggilan untuk berperang demi meninggikan kalimat Allah Swt. serta menjaga keberlangsungan Islam dan kaum muslim. Dapat juga dipahami bahwa seruan itu berupa ajakan menuju iman, petunjuk, jihad, dan segala hal yang berkaitan dengan kebahagiaan hidup di dunia dan di akhirat.|311) Allah swt. menguasai hati manusia dan mengarahkannya sesuai kehendak-Nya. Maka, Allah Swt. menghalangi kecenderungan manusia untuk menuruti hawa nafsu, kemudian membimbingnya menuju jalan yang lurus.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '312) Yang dimaksud dengan rampasan perang di sini adalah harta yang diperoleh dari orang-orang kafir melalui pertempuran. Adapun harta yang diperoleh tanpa melalui pertempuran disebut fai‘. Pembagian dalam ayat ini hanya berkaitan dengan ganimah saja.|313) Seperlima dari ganimah itu dibagi kepada: 1) Allah Swt. dan Rasul-Nya, 2) kerabat Rasul (Bani Hasyim dan Bani Muṭṭalib), 3) anak yatim, 4) orang miskin, dan 5) ibnusabil, yaitu orang yang sedang dalam perjalanan. Adapun empat per lima dari ganimah itu dibagikan kepada mereka yang ikut bertempur.|314) Hari bertemunya dua pasukan pada Perang Badar (Jumat, 17 Ramadan 2 H). Sebagian mufasir berpendapat bahwa ayat ini mengisyaratkan permulaan turunnya Al-Qur’an pada malam 17 Ramadan.',
    '315) Kaum muslim waktu itu berada di pinggir lembah yang dekat ke Madinah dan orang-orang kafir berada di pinggir lembah yang jauh dari Madinah. Adapun kafilah yang dipimpin oleh Abu Sufyan berada di tepi pantai yang berjarak kira-kira 5 mil dari Badar.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '316) Mereka tidak mengerti bahwa berperang itu harus didasari semangat membela keyakinan dan menaati perintah Allah Swt. Mereka berperang semata-mata mempertahankan tradisi jahiliah dan maksud-maksud duniawi lainnya.',
    '',
    '',
    '317) Yakni bahwa Allah Swt. tidak akan menjatuhkan siksa sebelum terjadi pelanggaran atas ketentuan yang jelas.',
    '',
    '',
    '',
    '318) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 8) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin TaubahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '319) Para mufasir berbeda pendapat tentang pengertian haji akbar pada ayat ini. Ada yang mengatakannya hari nahar, ada yang mengatakannya hari Arafah. Yang dimaksud dengan haji akbar di sini adalah haji yang terjadi pada tahun ke-9 Hijriah.',
    '',
    '320) Yang dimaksud dengan bulan haram di sini adalah masa empat bulan yang menjadi tenggat bagi kaum musyrik pada waktu itu, yaitu mulai 10 Zulhijah (hari turunnya ayat ini) sampai dengan 10 Rabiulakhir.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '321) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '',
    '',
    '322) Setelah tahun 9 H. orang-orang musyrik tidak diperbolehkan mengerjakan haji dan umrah, atau memasuki masjid dan daerah haram menurut pendapat yang lain, baik untuk haji dan umrah maupun untuk keperluan yang lain.',
    '323) Jizyah adalah imbalan atau balasan atas rasa aman dan fasilitas yang diperoleh penganut agama Yahudi, Nasrani, dan lainnya yang hidup di negara Islam.|324) Ayat ini dan ayat-ayat yang senada berlaku dalam situasi perang agama, bukan dalam situasi damai.',
    '',
    '325) Maksudnya, mereka mematuhi ajaran yang telah ditetapkan oleh para rabi dan rahib, meskipun bertentangan dengan ajaran Allah Swt.',
    '',
    '',
    '',
    '',
    '326) Allah Swt. menetapkan periode orbit bumi mengitari matahari selama setahun yang setara dengan dua belas bulan, yaitu dua belas kali ketampakan bulan sabit akibat bulan mengitari bumi. Keteraturan periode waktu inilah yang menjadi patokan untuk perhitungan waktu.',
    '',
    '',
    '',
    '',
    '',
    '327) Maksud dari membinasakan diri sendiri dalam ayat ini adalah bahwa mereka akan binasa disebabkan sumpah palsu dan kebohongan mereka.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '328) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '329) Mereka ingin membunuh Nabi Muhammad saw.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '330) Orang yang tidak pergi berperang dalam ayat ini adalah perempuan, anak-anak, orang yang lemah, sakit, dan berusia lanjut.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '331) Kali pertama, mereka kalah dari Nabi Muhammad saw. dan umat Islam; dan kali kedua, kemunafikan mereka diungkap oleh Allah Swt. Bisa juga diartikan bahwa azab yang pertama adalah azab dunia dan yang kedua adalah azab kubur, karena ayat ini ditutup dengan penegasan adanya azab akhirat (ṡumma yuraddūna ilā ‘ażābin ‘aẓīm).',
    '',
    '332) Zakat membersihkan mereka dari kekikiran dan cinta yang berlebihan terhadap harta.',
    '',
    '',
    '',
    '333) Yang dimaksud dengan orang yang sebelumnya telah memerangi Allah Swt. dan Rasul-Nya adalah seorang pendeta Nasrani bernama Abu ‘Amir yang mereka tunggu-tunggu kedatangannya dari Syam untuk melaksanakan salat di masjid yang mereka dirikan, serta membawa tentara Romawi yang akan memerangi kaum muslim. Akan tetapi, Abu ‘Amir ini tidak jadi datang karena ia mati di Syam. Masjid yang didirikan kaum munafik itu dirobohkan atas perintah Rasulullah saw. berdasarkan wahyu yang diterimanya setelah kembali dari Perang Tabuk.',
    '',
    '',
    '334) Maksudnya, sampai mereka mati atau tidak dapat bertobat lagi.',
    '',
    '335) Menurut sebagian mufasir, termasuk golongan ini adalah mereka yang berpuasa.',
    '',
    '336) Permohonan ampunan Nabi Ibrahim a.s. untuk bapaknya antara lain terdapat dalam surah Ibrāhīm/14: 41 dan Maryam/19: 47.',
    '337) Seorang hamba tidak akan diazab oleh Allah Swt. semata-mata karena kesesatannya, kecuali jika hamba itu melanggar perintah-perintah yang sudah dijelaskan.',
    '',
    '',
    '338) Ketiga orang itu adalah Ka‘b bin Malik, Hilal bin Umayyah, dan Mararah bin Rabi‘. Mereka disalahkan karena tidak mau ikut serta dalam Perang Tabuk.',
    '',
    '',
    '',
    '',
    '339) Islam tidak mengajari umat muslim untuk memerangi orang kafir karena kekufurannya. Izin perang hanya diberikan demi menghindarkan diri dari segala bentuk kezaliman (dalam rangka membela diri), seperti jika orang Islam diserang.',
    '',
    '340) Penyakit batin pada ayat ini meliputi kekufuran, kemunafikan, keragu-raguan, dan sebagainya.',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 9) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin YunusAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '341) Lihat catatan kaki surah al-A‘rāf/7: 54.|342) Bersemayam di atas ʻArasy sesuai dengan keagungan dan kesucian-Nya.',
    '',
    '343) Allah Swt. menjadikan matahari dan bulan berbeda sifat fisisnya. Matahari bersinar karena memancarkan cahayanya dari proses reaksi nuklir di dalam intinya, sedangkan bulan bercahaya karena memantulkan cahaya matahari.|344) Pergerakan bulan mengitari bumi menyebabkan pemantulan cahaya matahari oleh bulan berubah-ubah bentuknya, dari bentuk sabit sampai purnama dan kembali menjadi sabit lagi, sesuai dengan posisinya. Keteraturan periode bulan mengitari bumi dijadikan sebagai perhitungan waktu bulanan. Dua belas bulan setara dengan satu tahun (surah at-Taubah/9: 36).',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '345) Kalimat ini adalah ejekan terhadap penyembah berhala yang menyangka bahwa berhala-berhala itu dapat memberinya pertolongan di hadapan Allah Swt.|346) Ayat ini tidak menunjukkan ketidaktahuan Allah Swt. atas segala sesuatu di langit dan di bumi, tetapi menunjukkan kemustahilan adanya sembahan selain Allah Swt.',
    '347) Yakni ketetapan bahwa perselisihan manusia di dunia itu akan diputuskan di akhirat.',
    '',
    '',
    '',
    '',
    '348) Maksudnya adalah bahwa bumi tampak indah dengan gunung-gunung dan lembah-lembahnya yang telah menghijau dengan tanam-tanamannya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '349) Allah Swt. menjadikan siklus harian rotasi bumi sebagai penyebab keberulangan malam dan siang. Saat malam, ketika matahari berada pada belahan bumi sebaliknya, suasana gelap dan sejuk sehingga sangat cocok menjadi waktu beristirahat. Sementara itu, siang hari yang terang sangat cocok menjadi waktu beraktivitas.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 10) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin HudAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '350) Menurut sebagian mufasir, yang dimaksud dengan tempat kediaman adalah dunia dan tempat penyimpanan adalah akhirat. Menurut mufasir lain, maksud tempat kediaman adalah rahim dan tempat penyimpanan adalah tulang sulbi.',
    '351) Lihat catatan kaki surah al-A‘rāf/7: 54.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '352) Ada yang menafsirkan saksi sebagai Jibril a.s., Al-Qur’an, atau Muhammad saw.',
    '353) Yang dimaksud para saksi di sini adalah malaikat, nabi-nabi, dan anggota badannya sendiri.',
    '354) Maksud ayat ini adalah bahwa mereka berusaha agar orang lain mengingkari agama yang benar.',
    '355) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '356) Gunung Judiy terletak di Armenia sebelah selatan dan berbatasan dengan Mesopotamia.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '357) Manusia dijadikan penghuni dunia untuk menguasai dan memakmurkannya.',
    '',
    '',
    '',
    '358) Perbuatan mereka membunuh unta itu adalah suatu pelanggaran terhadap larangan Nabi Saleh a.s. Oleh sebab itu, Allah Swt. menjatuhkan kepada mereka hukuman dengan membatasi sisa hidup mereka tiga hari saja. Maka, sebagai ejekan, mereka disuruh bersuka ria selama tiga hari itu.',
    '',
    '',
    '359) Demikian cepatnya mereka dihancurkan oleh guntur itu sehingga mereka hancur lebur, seolah-olah mereka tidak pernah ada.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '360) Nabi Lut a.s. merasa gundah akan kedatangan para utusan Allah Swt. itu karena mereka berwujud pemuda yang rupawan, sedangkan kaum Lut sangat menyukai pemuda-pemuda yang rupawan untuk diajak berhubungan seksual sesama jenis. Dia merasa tidak sanggup melindungi mereka dari gangguan kaumnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '361) Perkataan ini mereka ucapkan untuk mengejek Nabi Syuʻaib a.s.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '362) Kalimat ini adalah kiasan yang dimaksudkan untuk menjelaskan kekekalan mereka di neraka. Alam akhirat juga mempunyai langit dan bumi tersendiri.',
    '',
    '',
    '363) Sekiranya tidak ada ketetapan penundaan azab terhadap mereka sampai hari Kiamat, tentulah mereka dibinasakan pada waktu itu juga.',
    '',
    '',
    '364) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 11) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin YusufAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '365) Yang dimaksud saudara kandung Nabi Yusuf a.s. adalah Bunyamin.',
    '',
    '',
    '',
    '',
    '',
    '366) Maksudnya adalah menjadi orang pengecut yang hidupnya tidak ada artinya.',
    '',
    '',
    '',
    '',
    '',
    '367) Mereka khawatir Nabi Yusuf a.s. akan ditemukan oleh keluarganya sehingga akan langsung diambil kembali dan mereka tidak mendapatkan apa-apa. Oleh karena itu, mereka cepat-cepat menjualnya walaupun dengan harga murah.',
    '368) Orang dari Mesir yang membeli Nabi Yusuf a.s. itu adalah seorang pembesar Mesir yang dikenal dengan nama Qitfir al-Aziz. Sebagian kitab tafsir juga menyebut nama istrinya, yaitu Rail. Ada juga yang menyebutnya Zulaikha atau Zalikha. Namun, riwayat yang menyebutkan nama-nama tersebut tidak dapat dipertanggungjawabkan.',
    '',
    '',
    '369) Ayat ini tidak menunjukkan bahwa Nabi Yusuf a.s. mempunyai keinginan yang buruk terhadap perempuan itu, tetapi godaan itu demikian besarnya sehingga sekiranya dia tidak dikuatkan dengan keimanan kepada Allah Swt., tentu dia jatuh ke dalam kemaksiatan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '370) Menurut suatu riwayat, dua pemuda itu adalah pelayan-pelayan raja.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '371) Yang dimaksud dengan keadaan di sini ialah pendapat perempuan-perempuan itu tentang Nabi Yusuf a.s., apakah dia terpengaruh godaan itu atau tidak.',
    '',
    '',
    '',
    '',
    '',
    '',
    '372) Menurut catatan sejarah, telah terjadi musim paceklik di Mesir dan sekitarnya. Maka, atas anjuran Nabi Ya‘qub a.s., saudara-saudara Nabi Yusuf a.s. datang dari Kan‘an ke Mesir untuk menghadap pembesar-pembesar Mesir demi mendapatkan bahan makanan.',
    '',
    '',
    '',
    '373) Menurut kebanyakan mufasir, barang-barang saudara-saudara Nabi Yusuf a.s. yang digunakan sebagai alat penukar bahan makanan itu ialah kulit atau terompah.|374) Tindakan ini diambil sebagai siasat dengan cara menanam budi kepada mereka agar mereka nantinya bersedia kembali lagi ke Mesir dengan membawa Bunyamin.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '375) Cawan yang dimaksud adalah suatu wadah yang terbuat dari emas yang digunakan untuk minum dan dapat juga digunakan untuk menakar.',
    '',
    '',
    '',
    '',
    '376) Dalam syariat Nabi Ya‘qub a.s., hukuman bagi pencuri adalah dijadikan hamba sahaya selama satu tahun.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 12) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin RadAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '377) Lihat catatan kaki surah al-A‘rāf/7: 54.',
    '378) Topografi daratan bumi berupa hamparan dan gunung-gunung. Di antaranya ada sungai-sungai. Daratan itu menjadi tempat tumbuhnya tanaman penghasil buah-buahan yang penyerbukannya dapat terjadi karena struktur bunga yang berpasangan, jantan dan betina. Semuanya mengalami siang dan malam karena proses perputaran bumi.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '379) Seruan yang hak ditafsirkan oleh para ulama sebagai pengakuan atas kandungan kalimat la ilāha illallāh dan juga ditafsirkan sebagai beribadah dan berdoa.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '380) Allah Swt. menyesatkan seseorang karena yang bersangkutan ingkar pada petunjuk-petunjuk-Nya. Dia memberikan hidayah kepada seseorang karena ketaatannya terhadap petunjuk-petunjuk-Nya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '381) Yang dimaksud dengan mereka adalah orang Yahudi dan Nasrani yang tidak mengingkari Allah Swt. dan tidak mendustakan rasul-rasul-Nya.',
    '',
    '382) Pada setiap masa ada hukum yang diberlakukan oleh Allah Swt. atas hamba-hamba-Nya sesuai dengan kebijakan-Nya.',
    '',
    '',
    '',
    '',
    '383) Yang dimaksud orang yang menguasai ilmu al-Kitab adalah ulama Ahlulkitab yang memeluk Islam.'
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 13) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin IbrahimAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '384) Hari-hari Allah maksudnya adalah peristiwa-peristiwa yang terjadi pada kaum-kaum terdahulu serta nikmat dan siksaan yang mereka alami.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '385) Maksud salam adalah selamat dari segala bencana.',
    '386) Termasuk kalimah ṭayyibah ialah segala ucapan yang menyeru kepada kebajikan dan mencegah kemungkaran serta perbuatan baik, termasuk di dalamnya adalah kalimat tauhid, yaitu lā ilāha illallāh.',
    '',
    '387) Termasuk kalimah khabīṡah ialah ungkapan-ungkapan yang mengandung kekufuran, kemusyrikan, serta segala perkataan yang tidak benar dan tidak baik.',
    '388) Yang dimaksud dengan ucapan-ucapan yang teguh di sini ialah kalimah ṭayyibah yang disebut pada ayat ke-24 di atas.',
    '',
    '',
    '',
    '',
    '',
    '389) Allah Swt. menundukkan matahari dan bulan dengan hukum-hukum-Nya di alam sehingga bumi terus mengitari matahari (yang tampak seolah matahari yang mengitari bumi) dan bulan terus mengitari bumi, serta bumi terus berotasi sehingga menampakkan fenomena malam dan siang.',
    '',
    '',
    '',
    '',
    '',
    '',
    '390) Nabi Ibrahim a.s. hanya mendoakan sebagian anak cucunya karena Allah Swt. telah memberitahunya bahwa sebagian anak cucunya yang lain akan menjadi orang-orang kafir.',
    '',
    '',
    '',
    '',
    '',
    '391) Yang dimaksud dengan gunung pada ayat ini adalah syariat Allah Swt. yang kukuh laksana gunung.',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 14) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin HijrAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '392) Kata-kata ini diucapkan oleh orang kafir Makkah kepada Nabi Muhammad saw. sebagai ejekan.',
    '',
    '',
    '393) Ayat ini memberi jaminan tentang kesucian dan kemurnian Al-Qur’an selama-lamanya.',
    '',
    '',
    '',
    '394) Sunatullah di sini ialah membinasakan orang yang mendustakan rasul.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '395) Segala sesuatu itu bersumber dari Allah Swt.',
    '396) Maksudnya adalah mengawinkan awan, tanaman, dan sebagainya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '397) Sujud di sini bukan berarti menyembah, melainkan menghormat seperti sujudnya saudara-saudara Nabi Yusuf a.s. kepadanya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '398) Penjelasan lebih lengkap, lihat surah aż-Żāriyāt/51: 27.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '399) Maksudnya adalah kota Sodom yang terletak di dekat pantai Laut Tengah di sebelah timur Yordania sekarang.',
    '',
    '',
    '400) Mereka ingin melakukan tindakan homoseksual dengan tamu-tamu. Mereka memang pernah mengancam Nabi Lut a.s. agar tidak menghalangi mereka berbuat demikian.',
    '',
    '401) Sumpah Allah yang demikian ini menunjukkan kemuliaan beliau di sisi-Nya.',
    '',
    '',
    '',
    '402) Negeri yang dimaksud adalah kota Sodom. Orang Quraisy biasa melaluinya dalam perjalanan mereka ke Syam.',
    '',
    '403) Penduduk Aikah adalah kaum Nabi Syuʻaib a.s. Aikah adalah kawasan yang berhutan di daerah Madyan, Yordania.',
    '404) Kedua negeri yang dimaksud adalah kota Sodom dan Aikah.',
    '405) Penduduk negeri Hijr adalah kaum Samud, kaum Nabi Saleh a.s. Hijr merupakan nama satu tempat yang terletak di Wadi Qura antara Madinah dan Suriah.|406) Yang dimaksud dengan rasul-rasul di sini adalah Nabi Saleh a.s. Seharusnya, di sini disebut rasul, tetapi disebut rasul-rasul (jamak) karena mendustakan seorang rasul sama dengan mendustakan semua rasul.',
    '',
    '',
    '407) Peristiwa itu terjadi pada hari keempat setelah datangnya peringatan kepada mereka.',
    '',
    '',
    '',
    '408) Yang dimaksud dengan tujuh ayat yang dibaca berulang-ulang adalah surah al-Fātiḥah yang terdiri atas tujuh ayat. Sebagian mufasir mengatakan bahwa yang dimaksud adalah tujuh surah yang panjang, yaitu al-Baqarah, Āli ‘Imrān, al-Mā’idah, an-Nisā’, al-A‘rāf, al-An‘ām, dan al-Anfāl yang digabung dengan at-Taubah.',
    '',
    '',
    '409) Mereka adalah orang-orang yang menerima sebagian isi Kitab dan menolak sebagian yang lain.',
    '410) Mereka adalah orang Yahudi dan Nasrani yang memilah-milah Al-Qur’an. Ada bagian yang mereka percayai dan ada pula bagian yang mereka ingkari.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 15) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin NahlAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '411) Ketetapan Allah Swt. yang dimaksud adalah hari Kiamat yang telah diperingatkan kepada orang musyrik.',
    '',
    '',
    '',
    '',
    '',
    '',
    '412) Bagal adalah peranakan kuda dengan keledai.',
    '',
    '',
    '',
    '',
    '',
    '413) Yang dimaksud lautan di sini adalah perairan yang luas, baik tawar maupun asin, mencakup laut, danau, dan sungai yang luas.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '414) Maksudnya adalah wafat dalam keadaan suci dari kekufuran dan kemaksiatan atau dapat juga berarti mereka wafat dalam keadaan senang karena ada berita gembira dari malaikat bahwa mereka akan masuk surga.',
    '415) Maksudnya adalah kedatangan malaikat untuk mencabut nyawa mereka.|416) Maksudnya adalah kedatangan azab dari Allah Swt. untuk memusnahkan mereka.',
    '',
    '',
    '417) Lihat catatan kaki surah al-Baqarah/2: 26.',
    '',
    '',
    '',
    '',
    '',
    '',
    '418) Yakni orang yang mempunyai pengetahuan tentang nabi dan kitab-kitab.',
    '',
    '',
    '',
    '419) Kekurangan itu meliputi harta, jiwa, raga, dan sebagainya. Menurut sebagian mufasir, takhawwuf berarti ‘dalam keadaan takut’.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '420) Perkataan mereka bahwa Allah Swt. mempunyai anak perempuan, yaitu yang berwujud para malaikat, dipicu kebencian mereka kepada anak perempuan, sebagaimana tersebut dalam ayat Al-Qur’an berikutnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '421) Ayat ini menekankan bahwa laki-laki dan perempuan mendapat pahala yang sama dan bahwa amal kebajikan harus dilandasi iman.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '422) Kelaparan dan ketakutan itu meliputi mereka seperti halnya pakaian menutupi tubuh mereka.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '423) Orang-orang Yahudi diperintahkan untuk mengkhususkan hari Jumat untuk beribadah, tetapi mereka menolak dan menjadikan hari Sabtu sebagai penggantinya.',
    '424) Hikmah adalah perkataan yang tegas dan benar yang dapat membedakan antara yang hak dengan yang batil.',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 16) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin IsraAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '425) Masjidilaqsa dan daerah sekitarnya diberkahi Allah Swt., di antaranya, dengan diutusnya banyak nabi di sana dan dengan kesuburan tanahnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '426) Sekadar mengucapkan kata ah (atau kata-kata kasar lainnya) kepada orang tua tidak dibolehkan oleh agama, apalagi memperlakukan mereka dengan lebih kasar.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '427) Lihat catatan kaki surah al-An‘ām/6: 151.|428) Yang dimaksud dengan kekuasaan di sini ialah kewenangan ahli waris korban pembunuhan atau pemerintah yang sah untuk menuntut kisas atau menerima diat (lihat surah al-Baqarah/2: 178 dan an-Nisā’/4: 92).',
    '',
    '',
    '',
    '',
    '429) Yang dimaksud adalah larangan-larangan yang disebut dalam ayat 22, 23, 26, 29, 31, 32, 33, 34, 36, dan 37 surah ini.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '430) Maksudnya adalah apa yang diyakini mereka sebagai tuhan, yaitu berhala, malaikat, jin, dan sebagainya.',
    '431) Nabi Isa a.s., para malaikat, dan Uzair yang mereka sembah selama ini sebenarnya menyeru dan mencari jalan untuk mendekatkan diri kepada Allah Swt.',
    '',
    '',
    '432) Menurut sebagian mufasir, yang dimaksud ru’yā di sini berkaitan dengan peristiwa Isra Mikraj sehingga maknanya adalah ‘penglihatan Nabi ketika Isra Mikraj’. Adapun menurut sebagian mufasir lainnya, ru’yā ini berkaitan dengan Perang Badar. Maka, maknanya adalah ‘mimpi yang dialami Rasulullah sebelum peristiwa Perang Badar’.|433) Pohon terkutuk itu adalah pohon zaqum (lihat dalam surah aṣ-Ṣāffāt/37: 62 dan ad-Dukhān/44: 43).',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '434) Sekiranya Nabi Muhammad saw. benar-benar diusir oleh penduduk Makkah, niscaya mereka tidak akan lama hidup di dunia karena Allah Swt. segera akan membinasakan mereka. Hijrah Nabi Muhammad ke Madinah bukan karena pengusiran kaum Quraisy, melainkan semata-mata karena perintah Allah Swt.',
    '435) Maksudnya adalah bahwa setiap umat yang mengusir rasul pasti akan dibinasakan Allah Swt. Demikian itulah sunah (ketetapan) Allah Swt.',
    '436) Ayat ini menerangkan waktu salat yang lima. Tergelincirnya matahari menunjukkan waktu salat Zuhur dan Asar, sedangkan gelap malam menunjukkan waktu salat Magrib, Isya’, dan Subuh.|437) Dalam hadis riwayat Ahmad disebutkan bahwa salat Subuh disaksikan oleh para malaikat yang bertugas pada malam dan siang.',
    '',
    '438) Maksud doa ini adalah memohon kepada Allah Swt. agar kita memasuki suatu ibadah dan selesai darinya dengan niat yang baik dan penuh keikhlasan serta bersih dari riya dan dari sesuatu yang merusak pahala. Ayat ini juga mengisyaratkan kepada Nabi agar berhijrah dari Makkah ke Madinah. Ada juga yang memahami bahwa ayat ini berisi permohonan kepada Allah Swt. agar kita memasuki kubur dengan baik dan keluar darinya ketika hari Berbangkit dengan baik pula.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '439) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '',
    '440) Mukjizat yang sembilan itu ialah tongkat, tangan yang bisa memancarkan cahaya, belalang, kutu, katak, darah, banjir besar, laut yang terbelah, dan gunung (Sinai).',
    '',
    '',
    '',
    '441) Al-Qur’an benar-benar diturunkan oleh Allah Swt., bukan oleh selain-Nya.',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 17) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin KahfAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '442) Dalam Al-Qur’an, tidak ada makna yang saling berlawanan dan tidak ada penyimpangan dari kebenaran.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '443) Sebagian mufasir memahami raqīm sebagai nama anjing dan sebagian yang lain menafsirkannya sebagai batu prasasti berisi catatan tentang agama tauhid atau nama-nama mereka.',
    '',
    '444) Allah Swt. menidurkan mereka selama 309 tahun qamariah dalam gua itu (lihat ayat 25 surah ini) sehingga mereka tidak dapat dibangunkan oleh suara apa pun.',
    '445) Dua golongan itu ialah pemuda-pemuda itu sendiri yang berselisih tentang berapa lama mereka tinggal dalam gua itu.',
    '',
    '446) Bangun dan menghadap Raja Dikyanus yang zalim dan sombong.',
    '',
    '447) Perkataan ini terjadi antara mereka itu sendiri yang timbulnya karena ilham dari Allah Swt.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '448) Di antara contoh amal kebajikan yang abadi pahalanya adalah melaksanakan rukun Islam dengan benar dan membaca tasbih, tahmid, dan zikir-zikir lainnya.',
    '',
    '',
    '',
    '449) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '',
    '',
    '450) Di antara bentuk siksaan Allah Swt. adalah yang tidak langsung diberikan kepada hamba-Nya yang berdosa, tetapi ditunda sesuai kehendak Allah Swt.',
    '',
    '',
    '',
    '',
    '451) Menurut sebagian mufasir, pria itu bernama Yusya’ bin Nun, salah satu pembesar Bani Israil.',
    '',
    '',
    '',
    '',
    '452) Menurut mufasir, berdasarkan hadis, hamba di sini ialah Nabi Khidir a.s., dan yang dimaksud dengan rahmat ialah wahyu dan kenabian. Adapun yang dimaksud dengan ilmu ialah pengetahuan tentang hal gaib, seperti yang akan diterangkan dalam ayat-ayat selanjutnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '453) Sampai di pantai sebelah barat, tempat Zulqarnain melihat matahari sedang terbenam.',
    '',
    '',
    '',
    '454) Menurut sebagian mufasir, golongan yang ditemui Zulqarnain itu adalah umat yang miskin.',
    '',
    '',
    '455) Mereka tidak dapat memahami bahasa orang lain karena bahasa mereka sangat jauh bedanya dari bahasa yang lain dan mereka pun tidak dapat menerangkan maksud mereka dengan jelas karena kekurangcerdasan mereka.',
    '456) Ya’juj dan Ma’juj ialah dua bangsa yang berbuat kerusakan di bumi.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '457) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '458) Tidak mengimani hari Kiamat.',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 18) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MaryamAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '459) Sebagian mufasir berpendapat bahwa yang berkata di sini adalah Allah Swt. Sebagiannya lagi berpendapat bahwa yang berkata di sini adalah Jibril.',
    '',
    '',
    '460) Maksudnya adalah, “Pelajarilah Taurat itu, amalkan isinya, dan sampaikan kepada umatmu!”|461) Maksudnya adalah pemahaman Taurat dan pendalaman agama.-><--><-',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '462) Seluruh alam ini akan hancur dan hanya Allah Swt. yang kekal.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '463) Sebagian mufasir berpendapat bahwa yang dimaksud ahlahu ialah keluarganya, sedangkan sebagiannya berpendapat bahwa yang dimaksud adalah umatnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '464) Maksudnya adalah memanjangkan umur dan membiarkan mereka hidup dalam kesenangan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '465) Yang dimaksud dengan mengadakan perjanjian dengan Allah Swt. adalah beriman kepada Allah Swt., menjalankan perintah-Nya, dan bertakwa kepada-Nya',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 19) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin TahaAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '466) Lihat catatan kaki surah al-A‘rāf/7: 54.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '467) Setiap orang yang memandang Nabi Musa a.s. akan merasakan cinta, kasih, dan sayang kepadanya.',
    '468) Yang terbunuh adalah seorang bangsa Qibti yang sedang berkelahi dengan seorang Bani Israil sebagaimana yang dikisahkan dalam surah al-Qaṣaṣ/28: 15.|469) Nabi Musa a.s. melarikan diri dari Mesir ke Madyan. Di sana dia dinikahkan oleh Syekh Madyan dengan salah seorang putrinya dan menetap beberapa tahun lamanya.-><-',
    '',
    '',
    '',
    '',
    '',
    '',
    '470) Di Mesir, Bani Israil menjadi budak Fir‘aun. Mereka dipekerjakan untuk mendirikan bangunan-bangunan yang besar dan kota-kota secara paksa. Maka, Nabi Musa a.s. meminta agar Fir‘aun membebaskan mereka.',
    '',
    '',
    '471) Yang dimaksud dengan petunjuk di sini adalah akal, insting (naluri), dan kodrat alamiah untuk kelanjutan hidupnya masing-masing.',
    '',
    '',
    '',
    '',
    '',
    '472) Yang dimaksud dengan tanda-tanda di sini adalah tanda-tanda kenabian Nabi Musa a.s. Pada pertemuan Nabi Musa a.s. dengan Fir‘aun ini, mukjizat yang diperlihatkan baru dua, yaitu tongkat menjadi ular dan tangan Nabi Musa a.s. menjadi putih bercahaya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '473) Memukul laut itu dengan tongkat (lihat surah asy-Syu‘arā’/26: 63).',
    '',
    '',
    '474) Ayat ini ditujukan kepada orang Yahudi pada zaman Nabi Muhammad saw., sedangkan yang dimaksud kamu pada ayat ini adalah nenek moyang mereka.|475) Lihat penjelasan tentang manna dan salwa pada catatan kaki surah al-Baqarah/2: 57.',
    '',
    '',
    '',
    '',
    '',
    '',
    '476) Beban berat yang disebutkan dalam ayat ini dapat berarti berat dalam makna fisik dan dapat pula berarti beban dosa karena tidak mengembalikan perhiasan yang mereka pinjam dari penduduk Mesir.|477) Mereka disuruh membawa perhiasan emas milik orang-orang Mesir, lalu Samiri meminta mereka melemparkan perhiasan itu ke dalam api yang telah dinyalakannya dalam suatu lubang untuk dijadikan patung berbentuk anak sapi. Kemudian, mereka melemparkannya bersama-sama dengan Samiri.',
    '478) Lihat catatan kaki surah al-A‘rāf/7: 148.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '479) Menurut jumhur ulama, yang dimaksud dengan jejak rasul adalah jejak telapak kuda Jibril a.s. Pendapat ini menjelaskan bahwa Samiri mengambil segumpal tanah dari jejak telapak kuda itu lalu melemparkannya ke arah patung anak sapi yang berasal dari leburan perhiasan emas tadi sehingga patung itu mengeluarkan suara. Adapun sebagian kecil mufasir berpendapat bahwa jejak rasul di sini adalah ajaran-ajarannya. Menurut pemahaman ini, Samiri mengambil sebagian ajaran Nabi Musa a.s. kemudian meninggalkan ajaran-ajaran itu sehingga dia menjadi sesat.',
    '480) Larangan menyentuh Nabi Musa a.s. bertujuan agar Samiri hidup terpencil sebagai hukuman di dunia. Adapun sebagai hukuman di akhirat, dia akan ditempatkan di neraka.',
    '',
    '',
    '',
    '',
    '481) Tiupan sangkakala yang kedua adalah tiupan untuk membangkitkan manusia dari kuburnya atau menghidupkannya kembali.',
    '',
    '482) Maksudnya adalah orang yang lurus pikirannya atau amalnya di antara orang yang berdosa.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '483) Nabi Muhammad saw. dilarang oleh Allah Swt. mengikuti bacaan Jibril kata demi kata sebelum Jibril selesai membacakannya agar beliau menghafal dan memahami betul-betul ayat yang diturunkan. Allah Swt. menjamin bahwa beliau akan mampu menghafal ayat-ayat yang diturunkan kepadanya.',
    '484) Pesan Allah Swt. ini tersebut dalam surah al-Baqarah/2: 35.',
    '',
    '',
    '',
    '',
    '',
    '485) Yang dimaksud dengan melanggar (perintah) Tuhannya di sini ialah melanggar larangan Allah Swt. karena lupa atau tidak sengaja, sebagaimana disebutkan dalam ayat 115 surah ini. Adapun yang dimaksud khilaf adalah mengikuti apa yang dibisikkan setan. Meskipun tidak begitu besar menurut ukuran manusia biasa, kesalahan Nabi Adam a.s. sudah dinamai melanggar karena tingginya martabat Nabi Adam a.s. dan supaya menjadi teladan pula bagi para tokoh dan pemimpin agar menjauhi perbuatan-perbuatan yang terlarang, seberapa pun kecilnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '486) Ajal yang ditentukan adalah waktu yang telah ditetapkan oleh Allah Swt. untuk menurunkan azab.',
    '',
    '',
    '',
    '487) Lihat surah al-Isrā’/17: 90‒93.',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 20) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin AnbiyaAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '488) Yang mereka maksud dengan sihir di sini ialah ayat-ayat Al-Qur’an.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '489) Dari sisi Kami maksudnya ialah yang sesuai dengan sifat-sifat Allah Swt.',
    '490) Contoh penyifatan yang tidak pantas adalah sangkaan bahwa Allah Swt. mempunyai istri dan anak.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '491) Dalam peristiwa itu, Nabi Daud a.s. memberi putusan bahwa kambing-kambing itu harus diberikan kepada pemilik ladang sebagai ganti kerusakan ladangnya. Akan tetapi, Nabi Sulaiman a.s. memutuskan bahwa pemilik kambing harus menanami ladang itu hingga kembali seperti semula. Pada saat yang sama, pemilik kambing wajib menyerahkan kambingnya untuk dimanfaatkan oleh pemilik ladang sampai tanaman itu tumbuh kembali.',
    '492) Menurut riwayat Ibnu Abbas, ada sekawanan kambing yang merusak tanaman pada waktu malam. Pemilik tanaman mengadukan hal ini kepada Nabi Daud a.s. Ia memutuskan bahwa kambing-kambing itu harus diserahkan kepada pemilik tanaman sebagai ganti tanaman yang rusak. Akan tetapi, Nabi Sulaiman a.s. memutuskan agar kambing-kambing itu diserahkan sementara kepada pemilik tanaman untuk diambil manfaatnya. Pemilik kambing diharuskan pula mengganti tanaman itu dengan tanaman yang baru. Apabila tanaman yang baru telah dapat diambil hasilnya, pemilik kambing itu boleh mengambil kambingnya kembali. Putusan Nabi Sulaiman a.s. inilah yang lebih tepat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '493) Maksudnya adalah kegelapan perut ikan, kegelapan laut yang dalam, dan kegelapan malam hari.',
    '',
    '494) Sekiranya Allah Swt. tidak mengabulkan doanya, yakni memberi keturunan, Nabi Zakaria a.s. akan berserah diri kepada Allah Swt. karena Allah Swt. adalah waris yang terbaik.',
    '',
    '',
    '',
    '',
    '',
    '495) Menurut sebagian mufasir, ayat ini juga bisa diartikan dengan, ‘Mustahil bagi (penduduk) suatu negeri yang telah Kami binasakan bahwa mereka tidak akan kembali (kepada Kami di akhirat untuk dihisab)’.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '496) Sebagian mufasir menyatakan bahwa Zabur adalah kitab yang diturunkan kepada Nabi Daud a.s., sedangkan aż-Żikr adalah kitab Taurat. Menurut yang lain, Zabur adalah kitab-kitab yang diturunkan Allah Swt. kepada nabi-nabi setelah ditulis di Lauh Mahfuz.',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 21) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin HajjAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '497) Hari raya haji dan hari Tasyriq, yaitu tanggal 10, 11, 12, dan 13 Zulhijah.',
    '498) Yang dimaksud dengan menghilangkan kotoran di sini ialah memotong rambut, memotong kuku, dan sebagainya.|499) Al-Bait al-‘Atīq berarti ‘rumah tua’. Dinamakan demikian karena merupakan rumah ibadah yang pertama kali dibangun di muka bumi. Al-‘Atīq bisa juga bermakna ‘yang dibebaskan dari ancaman para pendurhaka’.',
    '500) Arti yang terhormat (ḥurumāt) pada ayat ini ialah bulan haram (Zulkaidah, Zulhijah, Muharam, Rajab), tanah haram, dan maqam Ibrahim.',
    '',
    '501) Syiar Allah Swt. ialah segala amalan yang dilakukan dalam rangka ibadah haji dan tempat-tempat mengerjakannya.',
    '502) Lihat surah al-Baqarah/2: 196. |503) Maksudnya, hewan-hewan hadyu boleh diambil manfaatnya, seperti dikendarai, diperah susunya, dan sebagainya, sampai hari Nahar.',
    '',
    '',
    '504) Lazimnya, unta disembelih dalam posisi berdiri.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '505) Sebagian mufasir mengartikan tamannā dengan ‘membaca’ dan umniyyatihi dengan ‘bacaannya.’ Maksudnya, apabila Nabi saw. membaca suatu ayat yang isinya memberikan peringatan kepada orang-orang kafir, mereka segera mengikuti bacaan Nabi saw. dengan tambahan kata-kata yang membenarkan keyakinan mereka.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 22) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MukminunAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '506) Hamba sahaya dalam ayat ini adalah hamba sahaya yang didapat dari peperangan agama atau yang lahir dari ibu yang berstatus hamba sahaya. Hal ini sesuai dengan kebiasaan yang berlaku pada masa itu.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '507) Sebagian manusia meninggal dunia dan sebagian lain dilahirkan.',
    '',
    '',
    '',
    '508) Demikian buruknya akibat yang mereka terima, sampai-sampai mereka tidak berdaya sedikit pun, tidak ubahnya seperti sampah yang dihanyutkan banjir, padahal mereka bertubuh besar dan kuat.',
    '',
    '',
    '',
    '509) Mukjizat Nabi Musa a.s. yang sembilan macam.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '510) Kaum musyrik pernah mengalami kelaparan karena tidak datangnya bahan makanan dari Yaman ke Makkah, sedangkan Makkah dan sekitarnya dalam keadaan paceklik, sehingga mereka sangat kepayahan pada waktu itu.',
    '511) Antara lain, kekalahan mereka pada Perang Badar yang mengakibatkan banyak tokoh mereka terbunuh atau tertawan dan musim kering yang menimpa mereka sehingga mereka menderita kelaparan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '512) Diancam dengan hari Kebangkitan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '513) Barzakh yaitu tempat atau keadaan orang setelah mati sampai dia dibangkitkan pada hari Kiamat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 23) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin NurAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '514) Seorang suami yang menuduh istrinya berbuat zina, tetapi tidak dapat menghadirkan empat orang saksi, harus bersumpah dengan nama Allah Swt. sebanyak empat kali bahwa tuduhannya adalah benar adanya. Kemudian, dia bersumpah sekali lagi bahwa dia siap menerima laknat Allah jika dia berdusta. Masalah ini dalam fikih dikenal dengan lian.',
    '',
    '',
    '',
    '515) Berita bohong ini mengenai ‘Aisyah r.a., Ummul Mukminin, setelah perang dengan Bani Muṣṭaliq pada bulan Syakban 5 H. Perang itu diikuti kaum munafik dan turut pula ‘Aisyah r.a. dengan Nabi saw. berdasarkan undian yang diadakan di antara istri-istri beliau. Dalam perjalanan kembali, mereka berhenti pada suatu tempat. ‘Aisyah r.a. keluar dari sekedupnya untuk suatu keperluan, kemudian kembali. Tiba-tiba dia merasa kalungnya hilang, lalu dia pun mencarinya. Sementara itu, rombongan berangkat dengan persangkaan bahwa ‘Aisyah r.a. masih ada dalam sekedup. Setelah ‘Aisyah r.a. mengetahui sekedupnya sudah berangkat, dia duduk di tempatnya dan berharap sekedup itu akan kembali menjemputnya. Secara kebetulan, seorang sahabat Nabi bernama Ṣafwan bin Mu‘aṭṭal lewat di tempat itu dan menemukan seseorang yang sedang tidur sendirian. Ṣafwan terkejut seraya mengucapkan, “Innā lillāhi wa innā ilaihi rāji‘ūn, istri Rasul!” ‘Aisyah r.a. terbangun. Lalu, Ṣafwan mempersilakan oleh ‘Aisyah menaiki untanya. Ṣafwan berjalan menuntun unta sampai Madinah. Orang-orang yang melihat mereka membicarakannya menurut pendapat masing-masing. Mulailah timbul desas-desus. Kemudian, kaum munafik membesar-besarkannya. Maka, fitnah atas ‘Aisyah r.a. itu pun bertambah luas sehingga menimbulkan keguncangan di kalangan kaum muslim.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '516) Yang dimaksud dengan perempuan-perempuan yang polos adalah perempuan-perempuan yang tidak pernah sekali pun tebersit dalam pikirannya untuk berbuat keji.',
    '',
    '',
    '517) Ayat ini menunjukkan kesucian ‘Aisyah r.a. dan Safwan dari segala tuduhan yang ditujukan kepada mereka. Rasulullah adalah orang yang paling baik. Maka, perempuan yang baik pulalah yang menjadi istri beliau.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '518) Lubang yang tidak tembus (misykāt) ialah suatu lubang di dinding rumah yang tidak tembus sampai ke sebelahnya, yang biasanya digunakan untuk tempat menaruh lampu atau barang-barang lainnya.|519) Pohon zaitun itu tumbuh di puncak bukit. Pohon itu mendapat sinar matahari, sejak terbit hingga menjelang terbenam, sehingga tumbuh subur dan buahnya menghasilkan minyak yang baik.',
    '520) Yang bertasbih ialah orang yang disebut pada ayat 37.',
    '',
    '',
    '521) Orang-orang kafir, karena amal-amal mereka tidak didasarkan atas iman, tidaklah mendapat balasan dari Allah Swt. di akhirat, walaupun di dunia mereka mengira akan mendapat balasan atas amal mereka itu.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '522) Maksudnya, di antara kaum muslim sendiri atau di antara kaum muslim dan nonmuslim.',
    '',
    '',
    '',
    '',
    '',
    '',
    '523) Maksudnya adalah tiga waktu ketika aurat sering terbuka. Oleh sebab itu, Allah Swt. melarang hamba sahaya dan anak-anak di bawah umur untuk masuk ke kamar tidur orang dewasa tanpa izin pada ketiga waktu tersebut.',
    '524) Anak-anak dari orang merdeka yang bukan mahram dan telah mencapai usia balig harus meminta izin terlebih dahulu jika hendak masuk ke kamar tidur orang tua, seperti cara orang-orang yang disebut pada ayat 27 dan 28 di surah ini.',
    '525) Maksudnya adalah pakaian luar yang kalau dibuka tidak menampakkan aurat.',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 24) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin FurqanAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '526) Mereka mengharapkan kebinasaan supaya terlepas dari siksa yang sangat besar, yaitu azab di neraka yang sangat panas, dibelenggu, dan ditempatkan di tempat yang sangat sempit sebagaimana dilukiskan dalam ayat ini.',
    '',
    '',
    '',
    '',
    '527) Setelah mereka dikumpulkan bersama dengan sembahan mereka, yaitu malaikat, Uzair, Nabi Isa a.s., dan berhala-berhala, dan setelah Allah Swt. menanyakan kepada sembahan itu, apakah mereka yang menyesatkan orang-orang itu ataukah orang-orang itu yang sesat dengan sendirinya, maka yang disembah itu menjawab bahwa tidaklah pantas bagi mereka untuk menyembah selain Allah Swt., apalagi menyuruh orang lain menyembah selain Allah Swt.',
    '',
    '',
    '',
    '528) Ini adalah suatu ungkapan yang biasa diucapkan oleh orang Arab pada waktu menemui musuh atau bencana yang tidak dapat dihindari. Ungkapan itu berarti ‘semoga Allah Swt. menghindarkan bahaya ini dariku’.',
    '529) Amal-amal baik yang mereka kerjakan di dunia tidak dibalas oleh Allah Swt. di akhirat karena mereka tidak beriman.',
    '',
    '',
    '',
    '',
    '530) Yang dimaksud si fulan adalah setan atau orang yang telah menyesatkannya di dunia.',
    '',
    '',
    '',
    '531) Al-Qur’an tidak diturunkan sekaligus, tetapi secara berangsur-angsur agar hati Nabi Muhammad saw. menjadi kuat dan mantap.',
    '',
    '',
    '',
    '',
    '',
    '532) Rass adalah telaga yang sudah kering airnya. Kata tersebut kemudian dijadikan nama suatu kaum. Mereka menyembah patung, lalu Allah Swt. mengutus Nabi Syu‘aib a.s. kepada mereka.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '533) Maksud kalimat ini adalah bahwa bayang-bayang itu Kami hilangkan secara perlahan sesuai perjalanan matahari menuju tempat terbenamnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '534) Muṣāharah (persemendaan) adalah hubungan kekeluargaan yang timbul akibat ikatan pernikahan, seperti menantu, mertua, dan ipar.',
    '',
    '',
    '',
    '',
    '535) Lihat catatan kaki surah al-A‘rāf/7: 54.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 25) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin SyuaraAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '536) Nabi Musa a.s. memohon agar Harun a.s. diangkat menjadi rasul untuk membantunya.',
    '537) Nabi Musa a.s. merasa berdosa kepada orang-orang Mesir karena pernah membunuh salah seorang di antara mereka tanpa sengaja sebelum menjadi nabi.',
    '',
    '',
    '',
    '538) Nabi Musa a.s. tinggal bersama Fir‘aun sejak kecil hingga berusia sekitar delapan belas tahun.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '539) Tali-tali dan tongkat-tongkat yang dilemparkan penyihir yang seolah-olah ular itu ditelan semuanya oleh ular dari tongkat Nabi Musa a.s.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '540) Karena mengejar Nabi Musa a.s. dan Bani Israil, Fir‘aun dan bala tentaranya telah keluar dari negeri mereka dengan meninggalkan kerajaan, kebesaran, kemewahan, dan sebagainya.',
    '541) Setelah Fir‘aun dan bala tentaranya binasa, Nabi Musa a.s. dan Bani Israil kembali ke Mesir untuk mengambil harta kekayaan Fir‘aun dan tentaranya. Mereka lalu melanjutkan perjalanan ke Baitulmaqdis.',
    '',
    '',
    '',
    '',
    '542) Yang dimaksud dengan kelompok yang lain adalah Fir‘aun dan bala tentaranya. Maksud ayat ini adalah bahwa di bagian yang terbelah itu Allah Swt. mendekatkan antara Fir‘aun dan bala tentaranya dengan Nabi Musa a.s. dan Bani Israil.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '543) Maksud ayat ini adalah bahwa sebagian penyair itu suka bermain kata-kata, tidak mempunyai tujuan yang baik, dan tidak mempunyai pendirian.',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 26) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin NamlAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '544) Yang dimaksud adalah meletakkan tangan ke dada melalui leher baju.',
    '',
    '',
    '',
    '545) Nabi Sulaiman a.s. menggantikan kenabian dan kerajaan Nabi Daud a.s. serta mewarisi ilmu pengetahuan dan kitab Zabur yang diturunkan kepadanya.',
    '',
    '',
    '',
    '546) Hudhud adalah sejenis burung pelatuk yang bermahkota (berjambul).',
    '',
    '547) Saba’ adalah nama kerajaan pada zaman dahulu, ibukotanya Ma‘rib yang terletak dekat kota Sana‘a, ibukota Yaman sekarang.',
    '548) Yang dimaksud dengan perempuan dalam ayat ini adalah Ratu Balqis yang memerintah kerajaan Saba’ pada zaman Nabi Sulaiman a.s.',
    '',
    '549) Di antara perwujudan mengeluarkan apa yang terpendam di langit dan di bumi adalah menurunkan hujan dari langit, menumbuhkan tanam-tanaman, serta mengeluarkan logam dan barang tambang dari bumi.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '550) Yang dimaksud kitab suci pada ayat ini adalah kitab yang diturunkan sebelum Nabi Sulaiman a.s., yaitu Taurat dan Zabur.',
    '',
    '551) Balqis telah mengetahui kenabian Sulaiman a.s. sebelum singgasananya dipindahkan dari negeri Saba’ ke Palestina dalam sekejap mata.',
    '',
    '',
    '',
    '',
    '',
    '552) Yang dimaksud dengan kota dalam ayat ini ialah kota kaum Samud, yaitu kota Hijr.',
    '',
    '',
    '',
    '',
    '553) Mereka adalah Nabi Saleh a.s. dan para pengikutnya.',
    '554) Yang dimaksud dengan perbuatan keji pada ayat ini adalah penyimpangan seks, termasuk hubungan sejenis.',
    '',
    '',
    '',
    '',
    '',
    '',
    '555) Ungkapan dua laut pada ayat ini merujuk pada laut yang asin dan sungai besar yang bermuara di laut. Sungai yang tawar itu setelah sampai di muara tidak langsung menjadi asin.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '556) Orang-orang musyrik Arab mendustakan ayat-ayat Allah Swt. tanpa memikirkannya lebih dahulu.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 27) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin QasasAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '557) Fir‘aun selalu takut kerajaannya akan dihancurkan oleh Bani Israil. Oleh karena itu, dia membunuh setiap bayi laki-laki Bani Israil. Ayat ini menyatakan bahwa apa yang ditakutkannya itu akan terjadi.',
    '',
    '',
    '',
    '558) Setelah ibunda Nabi Musa a.s. menghanyutkan Musa kecil di sungai Nil, dia menyesal dan khawatir anaknya tidak akan selamat. Ia hampir saja berteriak meminta tolong kepada orang lain untuk mengambil anaknya itu kembali, suatu tindakan yang dapat membocorkan rahasia bahwa Musa adalah anaknya sendiri.',
    '',
    '',
    '',
    '',
    '559) Menurut sebagian mufasir, kota itu adalah Memphis yang terletak di Mesir bagian utara.',
    '',
    '',
    '',
    '',
    '',
    '',
    '560) Penjelasan tentang Madyan dapat dilihat pada catatan kaki surah al-A‘rāf/7: 85.',
    '',
    '',
    '',
    '',
    '',
    '',
    '561) Setelah Nabi Musa a.s. menyelesaikan hal yang dijanjikan kepada mertuanya, Syekh Madyan, ia berangkat bersama istrinya ke Mesir untuk menjumpai ibunya.',
    '562]) Di tempat dan saat itulah Nabi Musa a.s. diangkat sebagai rasul.',
    '563) Kisah serupa terdapat pada surah Ṭāhā/20: 20.',
    '',
    '',
    '564) Selain segan kepada Fir‘aun, Nabi Musa a.s. juga merasa kurang lancar berbicara. Maka, dia memohon kepada Allah Swt. agar mengutus Harun a.s. yang lebih lancar berbicara untuk menjadi nabi bersamanya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '565) Setelah penduduknya hancur, tempat itu menjadi kosong dan tidak dimakmurkan lagi, sehingga akhirnya kembali kepada pemiliknya yang hakiki, Allah Swt.',
    '',
    '',
    '566) Mereka adalah orang yang diberi kenikmatan duniawi, tetapi tidak menggunakannya untuk mencari kebahagiaan akhirat. Di akhirat nanti dia akan diseret ke dalam neraka.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '567) Yang dimaksud dengan saksi pada ayat ini adalah rasul yang telah diutus kepada mereka ketika di dunia.',
    '568) Qarun adalah saudara sepupu Nabi Musa a.s.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '569) Yang dimaksud dengan tempat kembali adalah kota Makkah. Allah Swt. berjanji bahwa Nabi Muhammad saw. akan kembali ke Makkah sebagai orang yang menang. Peristiwa ini terjadi pada tahun kedelapan Hijriah, pada waktu Nabi saw. menaklukkan Makkah. Inilah salah satu mukjizat Nabi Muhammad saw.',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 28) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin AnkabutAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '570) Orang itu menganggap dahsyatnya kezaliman manusia sama seperti dahsyatnya azab Allah Swt. sehingga dia meninggalkan imannya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '571) Balasan yang dimaksud pada ayat ini adalah memberikan anak cucu yang baik, kenabian kepada keturunannya, dan pujian.',
    '',
    '572) Sebagian mufasir mengartikan taqṭa‘ūnas-sabīl dengan ‘melakukan perbuatan keji terhadap orang-orang yang dalam perjalanan’ karena sebagian besar mereka melakukan homoseks itu dengan tamu-tamu yang datang ke kampung mereka. Ada lagi yang mengartikannya dengan ‘memutus jalur keturunan’ karena mereka berbuat homoseks.',
    '',
    '573) Kabar gembira yang dimaksud adalah bahwa Nabi Ibrahim a.s. akan mendapatkan putra.',
    '',
    '574) Nabi Lut a.s. merasa sedih akan kedatangan utusan-utusan Allah Swt. itu karena mereka adalah pemuda yang rupawan, sedangkan kaum Lut sangat menyukai pemuda-pemuda yang rupawan untuk diajak melakukan homoseks. Dia merasa tidak sanggup melindungi mereka jika ada gangguan dari kaumnya.',
    '',
    '575) Tanda yang nyata adalah bekas-bekas reruntuhan kota Sodom, negeri kaum Nabi Lut a.s.',
    '',
    '',
    '',
    '',
    '',
    '576) Lihat catatan kaki surah Āli ‘Imrān/3: 28.',
    '',
    '',
    '577) Allah Swt. menciptakan semua yang disebutkan itu bukan dengan percuma, melainkan dengan penuh hikmah.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '578) Salah satu bentuk mendustakan kebenaran adalah mendustakan kenabian Muhammad saw.',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 29) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin RumAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '579) Maksudnya adalah bangsa Romawi Timur yang berpusat di Konstantinopel.',
    '580) Yakni dekat dari negeri Arab, yaitu Suriah dan Palestina.|581) Bangsa Romawi (pada saat ayat ini diturunkan) adalah suatu bangsa yang beragama Nasrani yang memiliki Kitab Suci, sedangkan bangsa Persia yang beragama Majusi menyembah api dan berhala (musyrik). Ketika tersiar berita kekalahan bangsa Romawi oleh bangsa Persia, kaum musyrik Makkah menyambutnya dengan penuh gembira karena berpihak kepada kaum musyrik Persia. Sebaliknya, kaum muslim berduka cita karenanya. Ayat ini dan ayat berikutnya turun untuk menerangkan bahwa setelah kalah bangsa Romawi akan menang dalam masa beberapa tahun saja. Hal itu benar-benar terjadi. Beberapa tahun setelah itu, bangsa Romawi berbalik mengalahkan bangsa Persia. Dengan kejadian itu, nyatalah kebenaran Nabi Muhammad saw. sebagai nabi dan rasul serta kebenaran Al-Qur’an sebagai firman Allah Swt.',
    '582) Kata biḍ‘ menunjukkan bilangan antara tiga sampai sembilan. Waktu antara kekalahan bangsa Romawi (tahun 614‒615) dan kemenangannya (tahun 622 M) adalah sekitar tujuh tahun.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '583) Menurut sebagian mufasir, ayat ini diartikan, ‘bahkan mereka menjadi kafir disebabkan oleh berhala-berhala.’',
    '',
    '',
    '',
    '',
    '584) Menurut sebagian mufasir, maksud bertasbih pada ayat 17 adalah menegakkan salat karena di dalamnya terdapat bacaan tasbih. Ayat 17 dan 18 menerangkan waktu salat yang lima.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '585) Perumpamaan tersebut menggambarkan bahwa tidak pantas ada persekutuan dari unsur-unsur yang tidak setara, misalnya antara hamba sahaya dan pemiliknya, apalagi antara makhluk dengan Allah Swt. Hal itu tentu lebih tidak pantas lagi.|586) Kamu merasa takut karena tidak bisa menggunakan apa yang kamu miliki tanpa seizin hamba-hamba sahaya itu.',
    '587) Lihat cacatan kaki surah al-Baqarah/2: 26.',
    '588) Maksud fitrah Allah pada ayat ini adalah ciptaan Allah Swt. Manusia diciptakan Allah Swt. dengan naluri beragama, yaitu agama tauhid. Jadi, manusia yang berpaling dari agama tauhid telah menyimpang dari fitrahnya.',
    '',
    '589) Maksud memecah belah agama mereka adalah meninggalkan agama tauhid dan menganut berbagai kepercayaan menurut keinginan mereka.',
    '590) Yang dimaksud dengan rahmat pada ayat ini adalah lepas dari bahaya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '591) Mereka terpisah-pisah karena sebagiannya berada di surga dan sebagian lagi di neraka.',
    '',
    '',
    '592) Maksud pembawa berita gembira adalah awan tebal yang ditiup angin lalu menurunkan hujan sehingga biji-bijian dapat tumbuh dan tanaman-tanaman menghijau dan berbuah.',
    '593) Ketika rasul-rasul datang membawa keterangan kepada kaumnya, sebagian mereka memercayainya, sedangkan sebagian yang lain mendustakannya, bahkan ada yang menyakitinya. Maka, Allah Swt. membalasnya dengan menurunkan azab kepada orang yang durhaka.',
    '',
    '',
    '',
    '',
    '594) Orang kafir disamakan oleh Allah Swt. dengan orang mati yang tidak mungkin lagi mendengar seruan kebenaran. Mereka juga seperti orang tuli yang tidak bisa mendengar panggilan sama sekali apabila mereka membelakangi orang yang memanggilnya.',
    '',
    '595) Kata lemah yang pertama berarti masa ketika masih berupa nutfah. Kata lemah yang kedua berarti masa kanak-kanak. Adapun kata kuat berarti masa muda.',
    '596) Sebagaimana mereka berdusta dalam perkataan mereka ini, seperti itulah mereka selalu berdusta di dunia.',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 30) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin LuqmanAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '597) Pesan dari ayat ini ditujukan kepada orang yang mempergunakan percakapan kosong (segala hal yang memalingkan hati dari ketaatan kepada Allah Swt.) untuk menyesatkan manusia.',
    '',
    '',
    '',
    '',
    '',
    '',
    '598) Selambat-lambat waktu menyapih ialah sampai anak berumur 2 tahun.',
    '',
    '599) Allah Mahalembut artinya ialah ilmu Allah itu meliputi segala sesuatu, betapapun kecilnya.',
    '',
    '',
    '600) Ketika berjalan, janganlah terlampau cepat dan jangan pula terlalu lambat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '601) Yang dimaksud dengan kalimatullah pada ayat ini adalah ilmu dan hikmah-Nya.',
    '',
    '',
    '',
    '',
    '602) Yang dimaksud jalan yang lurus adalah mengakui keesaan Allah Swt.',
    '',
    '603) Manusia tidak dapat mengetahui dengan pasti apa yang akan dikerjakannya besok atau yang akan diperolehnya, namun mereka diwajibkan berusaha.'
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 31) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin SajdahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '604) Lihat catatan kaki surah al-A‘rāf/7: 54.',
    '605) Yang dimaksud urusan itu naik kepada-Nya adalah beritanya dibawa oleh malaikat. Ayat ini merupakan tamsil bagi kebesaran Allah Swt. dan keagungan-Nya.',
    '',
    '',
    '',
    '',
    '606) Mereka dihidupkan kembali untuk menerima balasan Allah Swt. pada hari Kiamat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 32) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin AhzabAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '607) Yang dimaksud dengan maula dalam ayat ini adalah teman dekat.',
    '',
    '608) Yang dimaksud dengan perjanjian teguh yang diambil dari para nabi adalah kesanggupan mereka untuk menyampaikan agama kepada umatnya masing-masing.',
    '609) Pada hari Kiamat Allah Swt. akan menanyakan kepada para rasul sampai di mana usaha mereka menyampaikan ajaran Allah Swt. kepada umatnya dan sampai di mana umatnya melaksanakan ajaran Allah Swt. itu.',
    '610) Ayat ini menerangkan kisah bala tentara kafir yang dikalahkan dalam Perang Khandaq (Ahzab).',
    '611) Ayat ini menggambarkan begitu hebatnya perasaan takut dan gentar kaum mukmin pada waktu itu.',
    '',
    '',
    '',
    '612) Fitnah yang dimaksud dalam ayat ini adalah melakukan kekacauan, seperti murtad dan membantu pasukan musuh dalam peperangan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '613) Yang dijanjikan Allah Swt. dan Rasul itu adalah kemenangan setelah mengalami kesukaran.',
    '614) Yang dimaksud dengan menunggu pada ayat ini adalah menunggu salah satu di antara dua kebaikan, yakni menang atau mati syahid.',
    '',
    '615) Dalam perang Khandaq, orang mukmin urung berperang sebab Allah Swt. telah menghalau musuh mereka dengan mengirimkan angin dan malaikat.',
    '616) Setelah golongan-golongan yang bersekutu itu kocar-kacir, Allah Swt. memerintahkan Nabi Muhammad saw. untuk menghukum Yahudi Bani Quraizah dan mengusir mereka dari benteng-benteng mereka. Seluruh laki-laki dewasa yang ikut berperang kemudian dibunuh, sedangkan perempuan dan anak-anak ditawan.',
    '617) Yang dimaksud tanah yang belum diinjak pada ayat ini adalah tanah yang akan dimasuki oleh tentara muslim.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '618) Menurut riwayat, pada suatu ketika istri-istri Nabi Muhammad saw. ada yang cemburu dan ada yang meminta tambahan belanja. Maka, Nabi Muhammad saw. memutuskan hubungan dengan mereka sampai sebulan lamanya. Oleh karena takut diceraikan Nabi, mereka datang kepada Nabi menyatakan kerelaannya atas apa saja yang akan diperbuat Nabi terhadap mereka. Turunnya ayat ini memberikan izin kepada Nabi untuk menggauli atau tidak menggauli istri yang dikehendakinya serta merujuk istri-istrinya, jika sudah ada yang diceraikannya.',
    '',
    '619) Ayat ini melarang sahabat masuk ke rumah Rasulullah untuk makan sambil menunggu-nunggu waktu makannya Rasulullah.',
    '',
    '',
    '620) Selawat dari Allah Swt. berarti memberi rahmat, dari malaikat berarti memohonkan ampunan, dan dari orang-orang mukmin berarti berdoa agar diberi rahmat, seperti dengan perkataan Allāhumma ṣalli ‘alā Muhammad.-><-621) Dengan mengucapkan perkataan seperti Assalāmu ‘alaika ayyuhan-nabi yang artinya ‘semoga keselamatan terlimpah kepadamu, wahai Nabi’.',
    '',
    '',
    '622) Menurut satu pendapat, jilbab adalah sejenis baju kurung yang longgar yang dapat menutup kepala, wajah, dan dada.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 33) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin SabaAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '623) Apabila Nabi Sulaiman a.s. melakukan perjalanan dari pagi sampai dengan tengah hari, jarak yang ditempuhnya sama dengan jarak perjalanan unta dalam sebulan.',
    '',
    '',
    '',
    '624) Banjir besar akibat jebolnya bendungan Ma‘rib.',
    '',
    '625) Negeri Syam yang terkenal subur dan negeri-negeri lain yang terletak di antara Yaman dan Syam. Orang dapat berjalan dengan mudah dan aman pada siang dan malam hari tanpa harus berhenti di padang pasir.',
    '626) Mereka meminta agar kota-kota yang berdekatan itu dihapuskan supaya perjalanan menjadi panjang dan mereka dapat melakukan monopoli dalam perdagangan itu sehingga memperoleh keuntungan lebih besar.',
    '',
    '',
    '',
    '627) Pemberian syafaat hanya berlaku dengan seizin Allah Swt. Orang-orang yang akan diberi izin memberi syafaat dan yang mendapatkannya sama-sama merasa takut dan harap-harap cemas menunggu izin Allah Swt.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '628) Mereka menganggap bahwa nikmat yang besar di dunia adalah tanda keridaan Allah Swt. rida kepadanya sehingga mereka yakin tidak akan menerima azab di akhirat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '629) Apabila kebenaran sudah datang, kebatilan akan hancur binasa. Tidak ada yang mampu berbuat apa pun untuk melawan dan meruntuhkan kebenaran itu.',
    '',
    '',
    '',
    '',
    '630) Yang mereka inginkan itu adalah beriman atau kembali ke dunia untuk bertobat.'
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 34) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin FatirAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '631) Menurut sebagian mufasir, perkataan yang baik itu adalah kalimat lā ilāha illallāh. Namun, ada pula yang mengatakan bahwa yang dimaksud adalah zikir kepada Allah Swt. atau semua perkataan yang baik yang diucapkan karena Allah Swt.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '632) Maksudnya adalah orang-orang yang dapat engkau beri peringatan dan mau menerimanya.',
    '',
    '',
    '',
    '',
    '',
    '633) Kebenaran pada ayat ini adalah agama tauhid dan hukum-hukum.',
    '634) Zubur adalah lembaran-lembaran wahyu yang mengandung ketetapan hukum dan nasihat yang diberikan kepada para nabi terdahulu.',
    '',
    '',
    '635) Yang dimaksud dengan para ulama adalah orang yang mempunyai pengetahuan tentang syariat serta fenomena alam dan sosial yang menghasilkan rasa takut disertai pengagungan kepada Allah Swt.',
    '',
    '',
    '',
    '636) Ungkapan menzalimi diri sendiri berarti melakukan dosa, sedangkan kata pertengahan mengacu kepada orang yang melakukan amalan yang wajib saja dan menjauhi dosa. Adapun orang-orang yang lebih dahulu dalam berbuat kebaikan adalah orang-orang yang tidak hanya mengerjakan yang wajib, tetapi juga mengerjakan yang sunah.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '637) Yang dimaksud dengan ketetapan (yang berlaku) kepada orang-orang yang terdahulu adalah turunnya azab kepada orang-orang yang mendustakan rasul.',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 35) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin YasinAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '638) Peringatan yang diberikan oleh Nabi Muhammad saw. hanya berguna bagi orang yang mau mengikutinya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '639) Menurut sebagian mufasir, laki-laki tersebut bernama Habib an-Najjar.',
    '',
    '',
    '',
    '',
    '',
    '640) Menurut riwayat, laki-laki itu dibunuh oleh kaumnya sebagaimana tersebut dalam ayat 20‒25. Pada saat sakratulmaut, malaikat turun untuk memberinya kabar gembira bahwa Allah Swt. telah mengampuni dosanya dan menyediakan surga untuknya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '641) Bulan itu mulanya berbentuk seperti sabit, kemudian secara berangsur makin besar dan bundar sempurna pada saat purnama. Kemudian, bulan berangsur mengecil kembali hingga terlihat seperti tandan kering yang melengkung.',
    '',
    '',
    '642)  Maksudnya adalah hewan-hewan tunggangan dan alat-alat angkutan pada umumnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '643) Yang dimaksud dengan teriakan adalah suara tiupan sangkakala pertama yang menghancurkan alam ini.',
    '',
    '644) Ini adalah tiupan sangkakala yang kedua yang membangkitkan orang-orang dari kubur.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '645) Ayat ini terkait dengan kisah al-‘As bin Wa’il yang mendatangi Nabi Muhammad saw. dengan membawa tulang belulang yang sudah hancur, lalu berkata, “Siapakah yang bisa menghidupkan tulang-belulang yang telah hancur luluh ini?”',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 36) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin SaffatAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '646) Maksudnya, keduanya mempunyai kesamaan dalam hal keimanan kepada Allah Swt. dan pokok-pokok ajaran agama.',
    '647) Mengikhlaskan hatinya kepada Allah dengan sepenuhnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '648 ) Pertanyaan tersebut diajukan sebagai ejekan pada berhala-berhala yang diberi sajian makanan, tetapi tidak bisa memakannya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '649) Nabi Ibrahim a.s. pergi ke suatu negeri agar dapat menyembah Allah dan berdakwah.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '650) Peristiwa itu menjadi dasar disyariatkannya penyembelihan hewan kurban pada hari raya Iduladha.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '651) Ba‘l adalah nama salah satu berhala bangsa Fenisia yang hidup di wilayah yang saat ini menjadi negara Lebanon dan Suriah.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '652) Yaitu mereka yang tetap tinggal di kota dan tidak ikut pergi bersama Nabi Lut a.s.',
    '',
    '',
    '',
    '',
    '653) Undian diadakan karena muatan kapal sangat penuh dan dikhawatirkan akan tenggelam jika penumpang tidak dikurangi. Orang yang namanya keluar dalam undian dinyatakan kalah dan akan dilempar ke laut. Nama Nabi Yunus a.s. keluar dalam undian tersebut sehingga dia dilemparkan ke laut.',
    '654) Disebut tercela karena dia lari meninggalkan kaumnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '655) Orang musyrik Makkah mengatakan bahwa malaikat adalah anak-anak perempuan Allah Swt., padahal mereka sendiri menganggap hina anak perempuan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 37) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin SadAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '656) Nabi Ayyub a.s. menderita penyakit kulit beberapa waktu lamanya. Dia memohon kepada Allah Swt. untuk disembuhkan. Allah Swt. mengabulkan permohonan tersebut dan memerintahkannya untuk mengentakkan kaki ke tanah. Nabi Ayyub a.s. menaati perintah itu. Maka, keluarlah air dari bekas entakan kakinya. Dia mandi dan minum dari air itu. Dia pun sembuh dari penyakitnya dan dapat berkumpul kembali dengan keluarganya. Mereka kemudian berkembang biak dua kali lipat dari jumlah sebelumnya. Pada suatu ketika, Nabi Ayyub a.s. teringat akan sumpahnya untuk memukul istrinya apabila ia sembuh dari sakitnya lantaran sang istri pernah lalai mengurusnya ketika dia masih sakit. Namun, timbul rasa iba dan sayang kepada istrinya sehingga dia urung memenuhi sumpah tersebut. Maka, turunlah petunjuk Allah Swt. dalam ayat 44 bahwa dia dapat melaksanakan sumpahnya tanpa perlu menyakiti istrinya, yaitu dengan memukulnya dengan seikat rumput.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '657) Arti ungkapan hamba yang terpilih adalah orang-orang yang telah diberi taufik untuk menaati segala petunjuk dan perintah Allah Swt.',
    '',
    '',
    '',
    '',
    '658) Kebenaran berita-berita Al-Qur’an itu ada yang terlaksana di dunia dan ada pula yang terlaksana di akhirat. Yang terlaksana di dunia misalnya adalah janji Allah Swt. kepada orang mukmin untuk menang dalam peperangan melawan orang musyrik, sedangkan yang terlaksana di akhirat adalah seperti kebenaran janji Allah Swt. tentang balasan atau perhitungan yang akan dilakukan terhadap manusia.'
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 38) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin ZumarAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '659) Ungkapan tiga kegelapan pada ayat ini berarti kegelapan dalam perut, kegelapan dalam rahim, dan kegelapan dalam selaput yang menutup anak dalam rahim.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '660) Perintah ini bukanlah dalam arti yang sebenarnya, tetapi pernyataan kemurkaan Allah Swt. terhadap kaum musyrik yang selalu ingkar, meskipun berulang kali diajak bertauhid.',
    '',
    '',
    '661) Mereka mendengarkan ajaran-ajaran Al-Qur’an dan ajaran yang lain, lalu mengikuti ajaran-ajaran Al-Qur’an karena meyakininya sebagai yang terbaik.',
    '',
    '',
    '',
    '',
    '662) Hukum-hukum, pelajaran, dan kisah-kisah itu diulang-ulang dalam Al-Qur’an agar lebih berpengaruh dan lebih meresap dalam hati. Menurut sebagian mufasir yang lain, maksud kalimat ini adalah bahwa ayat-ayat Al-Qur’an itu dibaca berulang-ulang.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '663) Semua dosa bisa diampuni Allah Swt., kecuali dosa syirik (lihat surah an-Nisā’/4: 48).',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '664) Ayat ini menggambarkan kebesaran dan kekuasaan Allah Swt. dan hanya Dia yang berkuasa pada hari Kiamat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 39) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin GafirAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '665) Maksud ungkapan pandangan yang khianat adalah pandangan pada hal-hal yang terlarang, seperti memandang lawan jenis yang bukan mahram tanpa alasan yang dibenarkan syariat.',
    '',
    '',
    '666) Maksud bukti-bukti yang nyata adalah mukjizat, hukum-hukum, dan ajaran yang dibawanya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '667) Hari Kiamat disebut hari saling memanggil karena orang yang berkumpul di Padang Mahsyar saling memanggil untuk meminta tolong.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '668) Peninggalan peradaban tersebut berupa bangunan, benteng, istana, dan alat-alat perlengkapan.',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 40) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin FussilatAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '669) Kebiasaan setan adalah mengintip dan mencuri dengar pembicaraan para malaikat tentang apa yang akan terjadi di bumi.',
    '',
    '670) Yang dimaksud dengan dari depan dan dari belakang adalah dari segala penjuru.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '671) Mereka melakukan dosa dengan terang-terangan karena menyangka bahwa Allah tidak mengetahui perbuatan mereka serta pendengaran, penglihatan, dan kulit mereka tidak akan menjadi saksi di akhirat kelak atas perbuatan mereka.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '672) Maksud ungkapan dari depan maupun dari belakang adalah pada masa lalu dan yang akan datang.',
    '',
    '673) Mereka tidak melihat dari Al-Qur’an, kecuali fitnah-fitnah yang memang mereka cari.',
    '',
    '',
    '674) Hanya Allahlah yang mengetahui kapan datangnya hari Kiamat itu.|675) Yang dimaksud dengan sekutu-sekutu-Ku adalah berhala-berhala yang mereka anggap sebagai sekutu Allah.',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 41) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin SyuraAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 42) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin ZukhrufAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '676) Orang-orang musyrik mengatakan bahwa malaikat adalah anak perempuan Allah. Padahal, malaikat itu sebagian dari makhluk dan ciptaan-Nya.',
    '',
    '',
    '677) Ayat ini menggambarkan keadaan perempuan Arab pada waktu Al-Qur’an diturunkan. Mereka hanya dijadikan perhiasan atau tidak diberi kesempatan dalam pendidikan sehingga kurang pengetahuannya serta tidak mampu bersikap tegas dan jelas.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '678) Nabi Ibrahim a.s. menjadikan kalimat tauhid sebagai pegangan bagi keturunannya sehingga kalau di antara mereka ada yang mempersekutukan Allah, mereka diharapkan segera kembali pada tauhid itu.',
    '679) Sebagian keturunan Nabi Ibrahim a.s. melupakan tauhid serta tidak mensyukuri kenikmatan dan kehidupan yang dianugerahkan Allah. Allah tidak segera mengazab mereka. Sebaliknya, Allah memberi mereka kenikmatan hingga Dia menurunkan Al-Qur’an serta mengutus seorang rasul untuk membimbing mereka.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '680) Kata penyihir tidak mereka gunakan untuk tujuan menghina, tetapi justru untuk menghormati karena mereka sangat mengagungkan ilmu sihir.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 43) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin DukhanAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '681) Yang dimaksud dengan turunnya Al-Qur’an pada malam lailatulqadar adalah bahwa Al-Qur’an untuk pertama kalinya diturunkan pada malam tersebut.',
    '682) Yang dimaksud dengan segala urusan yang penuh hikmah adalah segala sesuatu yang berhubungan dengan kehidupan makhluk, seperti hidup, mati, rezeki, nasib baik, dan nasib buruk.',
    '',
    '',
    '',
    '',
    '',
    '683) Maksudnya adalah bencana kelaparan yang menimpa kaum Quraisy akibat menentang Nabi Muhammad saw.',
    '',
    '',
    '',
    '684) Nabi Muhammad saw. dituduh menerima pelajaran dari Addas, seorang non-Arab yang beragama Nasrani.',
    '',
    '685) Hantaman yang besar itu terjadi pada Perang Badar ketika orang-orang musyrik dipukul mundur sehingga menderita kekalahan dan banyak di antara pemimpin mereka yang tewas.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '686) Tubba‘ adalah gelar yang diberikan kepada raja-raja di Yaman yang meliputi suku Himyar, Saba’, dan Hadramaut.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '687) Maksudnya adalah tanpa khawatir akan kehabisan, sakit, dan kemudaratan lainnya.',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 44) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin JasiyahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '688) Allah membiarkan orang itu sesat karena Allah mengetahui bahwa ia tidak menerima petunjuk yang Dia berikan kepadanya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 45) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin AhqafAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '689) Yang dimaksud dengan seorang saksi dari Bani Israil ialah Abdullah bin Salam. Dia menyatakan keimanannya kepada Nabi Muhammad saw. setelah memperhatikan adanya kesesuaian antara ajaran Al-Qur’an dan Taurat, seperti tauhid, janji dan ancaman, kerasulan Nabi Muhammad saw., adanya kehidupan akhirat, dan sebagainya.',
    '690) Orang-orang kafir itu mengejek umat Islam dengan mengatakan, “Sekiranya Al-Qur’an ini benar, tentu kami lebih dahulu beriman padanya daripada orang-orang miskin dan lemah itu, seperti Bilal, ‘Ammar, Suhaib, dan Khabbab.”',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '691) Lembah Ahqaf adalah lembah-lembah pasir yang terletak di Jazirah Arabia bagian selatan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 46) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MuhammadAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 47) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin FathAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '692) Ini termasuk ayat-ayat sifat. Ahli tafsir berbeda pendapat mengenai ayat ini. Sebagian menjelaskan bahwa yang dimaksud tangan adalah kekuatan dan kekuasaan Allah. Sebagian yang lain memahaminya sebagai pengawasan Allah akan janji setia yang diberikan oleh beberapa orang kepada Nabi Muhammad saw.',
    '',
    '',
    '',
    '',
    '693) Mereka ingin mengubah janji Allah bahwa rampasan itu (Khaibar) hanya untuk orang-orang yang ikut dalam Perjanjian Hudaibiah. Perjanjian itu terjadi pada akhir tahun keenam Hijriah. Kemudian, pada Muharam tahun ketujuh, Rasulullah dan para sahabat berangkat perang menuju Khaibar. Pada perang Khaibar ini, orang-orang Badui yang tidak ikut dalam Perjanjian Hudaibiah bermaksud untuk ikut berangkat ke Khaibar agar turut serta mendapatkan rampasan perang. Allah mengabarkan bahwa Dia telah berjanji bahwa rampasan perang ini hanya untuk mereka yang ikut dalam Perjanjian Hudaibiah.',
    '',
    '',
    '',
    '',
    '694) Allah menjanjikan harta rampasan perang yang banyak kepada kaum muslim. Sebagai pendahuluan, Allah memberikannya pada Perang Khaibar.',
    '',
    '',
    '',
    '',
    '',
    '695) Kalimat takwa adalah kalimat tauhid.',
    '696) Yang dimaksud dengan mencukur rambut kepala adalah tahalul setelah umrah.|697) Selang beberapa lama sebelum terjadi Perjanjian Hudaibiah, Nabi Muhammad saw. bermimpi bahwa beliau bersama para sahabatnya memasuki kota Makkah dan Masjidilharam. Sebagian mereka menggunduli rambut dan yang lain memendekkannya. Nabi mengatakan bahwa mimpi beliau itu akan terjadi. Kemudian, berita ini tersiar di kalangan kaum muslim, orang-orang munafik, serta orang-orang Yahudi dan Nasrani. Setelah Perjanjian Hudaibiah tercapai dan kaum muslim gagal memasuki Makkah, orang-orang munafik memperolok-olokkan Nabi dan menyatakan bahwa mimpi beliau adalah bohong belaka. Maka, turunlah ayat ini yang menyatakan bahwa mimpi Nabi itu pasti akan menjadi kenyataan pada tahun yang akan datang. Sekiranya pada tahun terjadinya Perjanjian Hudaibiah itu kaum muslim memasuki kota Makkah, dikhawatirkan jiwa orang-orang Makkah yang menyembunyikan imannya akan terancam.',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 48) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin HujuratAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '698) Maksudnya adalah bahwa orang-orang mukmin tidak boleh menetapkan suatu hukum sebelum ada ketetapan dari Allah dan Rasul-Nya dalam hal yang dimungkinkan adanya penjelasan dari Allah atau Rasul-Nya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '699) Panggilan fasik adalah panggilan dengan menggunakan kata-kata yang mengandung penghinaan atau tidak mencerminkan sifat seorang mukmin.',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 49) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin QafAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 50) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin ZariyatAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '700) Yang dimaksud dengan żātil ḥubuk (jalan-jalan yang kukuh) adalah garis edar bintang, planet, dan benda-benda angkasa lainnya. Ada pula yang mengartikan żātil ḥubuk dengan ‘memiliki ciptaan yang bagus’, ‘memiliki hiasan bintang-bintang’, atau ‘memiliki bangunan yang kukuh’.',
    '701) Maksudnya adalah perbedaan pendapat kaum musyrik tentang Nabi Muhammad saw. dan Al-Qur’an.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '702) Menurut sebagian mufasir, yang dimaksud dengan tanda kebesaran-Nya adalah batu-batu bertumpuk-tumpuk yang digunakan untuk membinasakan kaum Lut. Ada pula yang mengatakan bahwayangdimaksudadalahsebuah telaga yang airnya hitam dan berbau busuk.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 51) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin TurAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '703) Menurut riwayat al-Bukhari dan Muslim, Baitulmakmur adalah rumah di langit ketujuh yang senantiasa diramaikan oleh 70.000 malaikat yang beribadah salat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 52) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin NajmAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '704) Syi‘ra adalah nama bintang yang disembah oleh sebagian orang Arab pada masa Jahiliah.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 53) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin QamarAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '705) Hikmah yang sempurna dalam ayat ini adalah ilmu pengetahuan yang agung dan sempurna.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 54) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin RahmanAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '706) Mereka tidak ditanya untuk membuktikan amal perbuatannya, tetapi pada saatnya akan ditanya untuk mempertanggungjawabkannya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 55) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin WaqiahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '707) Zaqum adalah jenis pohon di neraka yang mengakibatkan derita yang luar biasa bagi yang memakannya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '708) Hamba Allah yang disucikan, menurut sebagian ulama, adalah orang-orang yang suci dari hadas besar dan kecil. Adapun menurut sebagian lainnya, maksudnya adalah makhluk Allah yang suci dari dosa dan kesalahan, yakni para malaikat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 56) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin HadidAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '709) Mahaawalberarti telah ada sebelum segala sesuatu ada sehingga tidak ada yang mendahului-Nya; Mahaakhirberarti akan hidup selamanya setelah segala sesuatu musnah; Mahazahir berarti wujud-Nya begitu nyata, baik melalui perenungan atas alam semesta yang Dia ciptakan maupunmelalui pembuktian logika dan rasa; dan Mahabatinberarti bahwa zat dan hakikat-Nya tidak bisa dijangkau, baik dengan mata, akal, maupun khayal.',
    '710) Yang dimaksud dengan yang naik, antara lain, adalah amal-amal dan doa-doa hamba-Nya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 57) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MujadalahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '711) Ayat ini turun berkenaan dengan Khaulah binti Ṡa‘labah yang dizihar oleh suaminya, Aus bin aṣ-Ṣamit, dengan mengatakan, “Kamu bagiku seperti punggung ibuku,” dengan maksud tidak akan lagi menggauli istrinya sebagaimana ia tidak akan menggauli ibunya. Dalam adat Jahiliah, kalimat zihar seperti itu sama dengan menalak istri. Khaulah mengadukan hal itu kepada Rasulullah saw. Rasulullah menjawab bahwa Allah belum menurunkan ketentuan hukum tentang zihar. Dalam riwayat lain beliau bersabda, “Engkau telah diharamkan bergaul dengan dia.” Khaulah lalu berkata, “Suamiku belum menyebut kata-kata talak.” Ia berulang kali mendesak Rasulullah agar menetapkan keputusan. Maka, turunlah ayat ini dan ayat-ayat berikutnya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 58) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin HasyrAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '712) Harta rampasan yang diperoleh dari musuh tanpa melalui pertempuran disebut fai’, sedangkan yang diperoleh melalui pertempuran disebut ganimah. Pembagian harta fai’ dijelaskan pada ayat 7 surah ini, sedangkan pembagian ganimah dijelaskan pada surah al-Anfāl/8: 41.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 59) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MumtahanahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '713) Nabi Ibrahim a.s. pernah meminta ampunan kepada Allah untuk ayahnya yang musyrik. Ini tidak boleh ditiru karena Allah tidak membenarkan orang mukmin memintakan ampunan untuk orang-orang kafir (lihat surah an-Nisā’/4: 48).',
    '',
    '',
    '',
    '',
    '',
    '',
    '714) Sebelum dibagikan kepada lima golongan yang berhak, ganimah dipergunakan lebih dahulu untuk membayar mahar-mahar kepada para suami yang istrinya lari ke daerah kaum kafir.',
    '715) Maksud berbuat dusta di sini adalah mengadakan pengakuan palsu terkait anak yang semestinya bukan anak suaminya, tetapi mereka nisbahkan kepadanya.',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 60) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin SaffAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '716) Karena mereka berpaling dari kebenaran, Allah membiarkan hati mereka sesat sehingga makin jauh dari kebenaran.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 61) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin JumuahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 62) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MunafiqunAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '717) Mereka bersumpah telah beriman agar tidak ditawan atau dibunuh dan harta mereka tidak dirampas.',
    '',
    '718) Orang-orang munafik bagaikan seonggok kayu yang tersandar tanpa daya hidup, tanpa pijakan yang kukuh, dan tanpa buah yang bisa dimanfaatkan.',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 63) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin TagabunAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '719) Kadang-kadang istri atau anak dapat menjerumuskan suami atau bapaknya untuk melakukan perbuatan-perbuatan yang tidak dibenarkan oleh agama.',
    '',
    '',
    '720) Pinjaman yang disebut dalam ayat ini adalah sedekah, infak, wakaf, zakat, dan lain-lain.',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 64) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin TalaqAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 65) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin TahrimAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '721) Nabi bersumpah untuk tidak menggauli istrinya, yaitu Mariah al-Qibtiyah. Dengan sumpah ini, sesuatu yang halal menjadi tidak diperbolehkan. Jadi, ayat ini tidak bermakna bahwa Nabi mengubah hukum halal menjadi haram.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 66) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MulkAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 67) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin QalamAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 68) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin HaqqahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 69) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MaarijAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '722) Maksudnya, Jibril dan para malaikat lain butuh waktu satu hari perjalanan untuk menghadap Allah Swt. Satu hari dalam dunia malaikat sama dengan lima puluh ribu tahun dalam dunia manusia.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '723) Maksudnya adalah orang-orang yang menyimpan hartanya, tidak mau mengeluarkan zakat, dan tidak pula menginfakkannya ke jalan yang benar.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '724) Lihat catatan kaki surah al-Mu’minūn/23: 6.',
    '',
    '',
    '',
    '',
    '',
    '',
    '725) Menurut sebagian mufasir, pada suatu hari orang-orang musyrik berkerumun di hadapan Rasulullah saw. sambil mengejek dan mengatakan, “Jika orang-orang mukmin benar-benar akan masuk surga sebagaimana kata Muhammad, kitalah yang akan masuk terlebih dahulu.” Maka, turunlah ayat 38.',
    '',
    '726) Orang-orang kafir itu mengetahui bahwa mereka diciptakan oleh Allah dari air mani untuk beriman dan bertakwa kepada-Nya seperti manusia lainnya. Jadi, jika tidak beriman dan bertakwa, mereka tidak berhak masuk surga.',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 70) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin NuhAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '727) Dakwah ini dilakukan setelah dakwah dengan cara diam-diam tidak berhasil.',
    '728) Setelah gagalnya dakwah secara diam-diam dan dakwah secara terang-terangan, Nabi Nuh a.s. melakukan keduanya sekaligus.',
    '',
    '',
    '',
    '',
    '729) Lihat surah al-Mu’minūn/23: 12‒14.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '730) Kelimanya adalah nama-nama berhala terbesar pada kabilah-kabilah kaum Nabi Nuh a.s. yang semula merupakan nama-nama orang saleh.',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 71) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin JinnAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '731) Yang dimaksud dengan sekarang adalah waktu setelah Nabi Muhammad saw. diutus menjadi rasul.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 72) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MuzzamilAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '732) Salat malam hukumnya wajib sebelum ayat ke-20 surah ini diturunkan. Setelah itu, hukumnya menjadi sunah.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 73) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MuddassirAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '733) Ayat ini dan beberapa ayat berikutnya diturunkan mengenai al-Walid bin al-Mugirah, pemimpin kafir Quraisy, yang sebelumnya tidak memiliki apa-apa.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '734) Kalimat ini merupakan bantahan terhadap ucapan orang-orang musyrik yang mengingkari hal-hal tersebut di atas.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 74) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin QiyamahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '735) Anggota badan manusia menjadi saksi atas perbuatan yang telah mereka lakukan, seperti tersebut dalam surah an-Nūr/24: 24.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '736) Hal itu menggambarkan hebatnya penderitaan pada saat akan mati serta ketakutan akan meninggalkan dunia dan menghadapi akhirat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 75) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin InsanAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '737) Kafur merupakan nama suatu mata air di surga yang warnanya putih, aromanya harum, dan enak rasanya. Kafur disediakan untuk hamba Allah yang taat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 76) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MursalatAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '738) Yang dimaksud adalah malaikat yang turun untuk membawa wahyu. Sebagian mufasir berpendapat bahwa yang dimaksud dengan an-nāsyirāt ialah angin yang bertiup disertai hujan.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '739) Maksudnya adalah waktu untuk berkumpul bersama umat mereka masing-masing.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '740) Bumi mengumpulkan orang-orang hidup di permukaannya dan orang-orang mati dalam perutnya.',
    '',
    '',
    '',
    '741) Maksudnya adalah tiga gejolak, yaitu di kanan, di kiri, dan di atas. Ini berarti bahwa azab itu mengepung orang-orang kafir dari segala penjuru.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 77) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin NabaAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '742) Malam disebut sebagai pakaian karena kegelapannya menutupi alam sebagaimana pakaian menutupi tubuh manusia.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '743) Para ahli tafsir berbeda pendapat mengenai maksud rūḥ pada ayat ini. Ada yang memahaminya sebagai Jibril, tentara Allah, atau malaikat yang diserahi tugas mengurus arwah dan sejenisnya.',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 78) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin NaziatAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '744) Dalam ayat 1‒5 Allah bersumpah dengan malaikat yang bermacam-macam sifat dan urusannya bahwa manusia akan dibangkitkan pada hari Kiamat. Sebagian mufasir berpendapat bahwa dalam ayat-ayat ini, kecuali ayat 5, Allah bersumpah dengan bintang-bintang.',
    '',
    '',
    '',
    '',
    '745) Setelah orang-orang kafir mendengar berita tentang adanya hari Kebangkitan setelah mati, mereka merasa heran dan mengejek karena menurut keyakinan mereka, hari Kebangkitan itu tidak ada. Itulah sebabnya mereka berkata demikian.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 79) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin AbasaAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '746) Maksudnya adalah memudahkan kelahirannya atau mempermudah baginya untuk menempuh jalan yang benar atau jalan yang sesat.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 80) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin TakwirAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '747) Setelah diterangkan bahwa Al-Qur’an itu benar-benar datang dari Allah dan di dalamnya ada pelajaran dan petunjuk yang memimpin manusia ke jalan yang lurus, ditanyakanlah kepada orang-orang kafir itu, “Jalan manakah yang akan kamu tempuh?”',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 81) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin InfitarAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 82) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MutaffifinAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '748) Sijjīn adalah nama kitab yang mencatat segala perbuatan orang-orang yang durhaka.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '749) Maksudnya adalah sekali-kali tidak seperti apa yang mereka katakan, yakni bahwa mereka dekat pada sisi Tuhan.',
    '',
    '',
    '750) ‘Illiyyīn adalah nama kitab yang mencatat segala perbuatan orang-orang yang beramal saleh.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 83) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin InsyiqaqAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '751) Manusia di dunia ini, baik disadari maupun tidak, sedang dalam perjalanan menuju Tuhannya. Pasti dia akan bertemu dengan Tuhannya untuk menerima balasan atas perbuatannya yang buruk dan yang baik.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '752) Yang dimaksud dengan tingkat demi tingkat adalah perkembangan dari setetes mani menuju kelahiran, kanak-kanak, remaja, dewasa, dan tua atau perkembangan dari hidup menuju mati, kemudian dibangkitkan kembali.',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 84) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin BurujAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 85) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin TariqAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '753) Raj‘ berarti ‘kembali berputar’. Hujan dinamakan raj‘ karena berasal dari uap yang naik dari bumi ke udara, kemudian turun ke bumi, kemudian menguap kembali ke atas, lalu turun kembali ke bumi, dan begitu seterusnya.',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 86) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin AklaAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 87) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin GasyiyahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 88) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin FajrAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '754) Yang dimaksud dengan malam yang sepuluh adalah sepuluh malam terakhir bulan Ramadan. Ada pula yang mengatakan sepuluh pertama dari bulan Muharam, termasuk di dalamnya hari Asyura, dan ada pula yang mengatakan sepuluh malam pertama dari bulan Zulhijah.',
    '',
    '',
    '',
    '',
    '',
    '',
    '755) Lembah ini terletak di bagian utara Jazirah Arab, antara kota Madinah dan Syam. Mereka memotong-motong batu gunung untuk membangun gedung-gedung tempat tinggal dan ada pula yang melubangi gunung-gunung untuk tempat tinggal dan tempat berlindung.',
    '',
    '',
    '',
    '',
    '',
    '',
    '756) Allah menyalahkan orang yang mengatakan bahwa kekayaan itu adalah suatu kemuliaan dan kemiskinan adalah suatu kehinaan, seperti yang tersebut pada ayat 15 dan 16. Sebenarnya, kekayaan dan kemiskinan adalah ujian Allah bagi hamba-hamba-Nya.',
    '757) Maksudnya adalah tidak memberikan hak-hak anak yatim dan tidak berbuat baik kepadanya.',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 89) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin BaladAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 90) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin SyamsAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 91) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin LailAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '758) Maksudnya adalah bahwa orang-orang yang bertakwa membantu orang lain bukan karena orang itu berjasa kepadanya sehingga perlu membalasnya, melainkan hanya mengharap rida Allah.',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 92) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin DuhaAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 93) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin SyarhAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 94) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin TinAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 95) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin AlaqAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '759) Zabaniah adalah malaikat yang bertugas menyiksa orang-orang yang berdosa.',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 96) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin QadrAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 97) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin BayyinahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 98) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin ZalzalahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 99) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin AdiyatAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 100) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin QariahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 101) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin TakasurAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '760) Maksudnya adalah bersaing memperbanyak anak, harta, pengikut, kemuliaan, dan sebagainya telah melalaikan manusia dari ketaatan kepada Allah Swt.',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 102) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin AsrAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 103) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin HumazahAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 104) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin FilAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 105) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin QuraisyAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 106) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin MaunAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '761) Melalaikan salat mencakup lalai akan waktu dan tujuan salat serta bermalasan dalam mengerjakannya.',
    '762) Riya adalah melakukan sesuatu perbuatan tidak untuk mencari keridaan Allah, tetapi untuk mencari pujian atau kemasyhuran di masyarakat.',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 107) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin KausarAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 108) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin KafirunAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 109) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin NasrAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 110) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin LahabAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '763) Yang dimaksud dengan kedua tangan Abu Lahab adalah Abu Lahab itu sendiri.',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 111) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin IkhlasAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 112) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin FalaqAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 113) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}

mixin NasAyahAnnotation on AyahAnnotation {
  static const List ayahs = <String>[
    '',
    '',
    '',
    '',
    '',
    ''
  ];

  @override
  String getAyahAnnotation(int surah, int ayah) {
    if (surah == 114) {
      return ayahs[ayah - 1];
    }

    return super.getAyahAnnotation(surah, ayah);
  }
}
