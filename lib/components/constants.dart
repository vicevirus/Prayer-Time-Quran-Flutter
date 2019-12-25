import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'negericards.dart';
import 'package:hijri/umm_alqura_calendar.dart';


  
  var gregorianDate = new DateTime.now();
  String formattedGregorianDate = DateFormat('dd MMMM yyyy').format(gregorianDate);

  var hijriDate = new ummAlquraCalendar.now();
  String formattedHijriDate = hijriDate.toFormat("dd MMMM yyyy");

final Widget gapBox = SizedBox(height: 15.0);
final List<Card> negeriNegeri = [
  johor(),
  kedah(),
  kelantan(),
  melaka(),
  negeriSembilan(),
  pahang(),
  penang(),
  perak(),
  perlis(),
  sabah(),
  sarawak(),
  selangor(),
  terengganu(),
  putrajaya(),
  kualalumpur(),
  labuan(),
  lokasiOnline(),
  lokasiOffline()
];
//Colors
const timeZone = 8.0;
const kalerTema = Color(0xFF66033c);
const johorColour = Color(0xFF002B7F);
const kedahColour = Color(0xFFD7111B);
const kelantanColour = Color(0xFFDA251D);
const melakaColour = Color(0xFFFFFF);
const negeriSembilanColour = Color(0xFFFFD100);
const pahangColour = Color(0xFF000000);
const penangColour = Color(0xFFFFFF00);
const perakColour = Color(0xFF000000);
const perlisColour = Color(0xFF002879);
const sabahColour = Color(0xFFF5332B);
const sarawakColour = Color(0xFFCF0821);
const selangorColour = Color(0xFFDA251D);
const terengganuColour = Color(0xFFFFFFFF);
const putrajayaColour = Color(0xFF000080);
const kualaLumpurColour = Color(0xFFDC241F);
const labuanColour = Color(0xFF003573);


const int Johor = 0;
const int Kedah = 1;
const int Kelantan = 2;
const int Melaka = 3;
const int N9 = 4;
const int Pahang = 5;
const int Penang = 6;
const int Perak = 7;
const int Perlis = 8;
const int Sabah = 9;
const int Sarawak = 10;
const int Selangor = 11;
const int Terengganu = 12;
const int Putrajaya = 13;
const int KualaLumpur = 14;
const int Labuan = 15;
const int LokasiOnline = 16;
const int LokasiOffline = 17;

List<String> kodjohor = [
  "jhr-0",
  "jhr-1",
  "jhr-2",
  "jhr-3",
  "jhr-4",
  "jhr-5",
  "jhr-6",
  "jhr-7",
  "jhr-8",
  "jhr-9",
  "jhr-10"
];

List<String> kodkedah = [
  "kdh-0",
  "kdh-1",
  "kdh-2",
  "kdh-3",
  "kdh-4",
  "kdh-5",
  "kdh-6",
  "kdh-7",
  "kdh-8",
  "kdh-9",
  "kdh-10",
  "kdh-11",
  "kdh-12",
];

List<String> kodkelantan = [
  "ktn-0",
  "ktn-1",
  "ktn-2",
  "ktn-3",
  "ktn-4",
  "ktn-5",
  "ktn-6",
  "ktn-7",
  "ktn-8",
  "ktn-9",
  "ktn-10",
  "ktn-11",
];

List<String> kodmelaka = [
  "mlk-0",
  "mlk-1",
  "mlk-2",
  "mlk-3",
  "mlk-4",
  "mlk-5",
];

List<String> kodn9 = [
  "ngs-0",
  "ngs-1",
  "ngs-2",
  "ngs-3",
  "ngs-4",
  "ngs-5",
  "ngs-6",
];

List<String> kodpahang = [
  "phg-0",
  "phg-1",
  "phg-2",
  "phg-3",
  "phg-4",
  "phg-5",
  "phg-6",
  "phg-7",
  "phg-8",
  "phg-9",
  "phg-10",
  "phg-11",
  "phg-12",
  "phg-13",
  "phg-14",
  "phg-15",
];

List<String> kodperak = [
  "prk-0",
  "prk-1",
  "prk-2",
  "prk-3",
  "prk-4",
  "prk-5",
  "prk-6",
  "prk-7",
  "prk-8",
  "prk-9",
  "prk-10",
  "prk-11",
  "prk-12",
  "prk-13",
  "prk-14",
  "prk-15",
  "prk-16",
  "prk-17",
  "prk-18",
  "prk-19",
  "prk-20",
  "prk-21",
  "prk-22",
  "prk-23",
  "prk-24",
  "prk-25",
  "prk-26",
];

List<String> kodperlis = [
  "pls-0",
  "pls-1",
  "pls-2",
];

List<String> kodpenang = [
  "pls-0",
];

List<String> kodsabah = [
  "sbh-0",
  "sbh-1",
  "sbh-2",
  "sbh-3",
  "sbh-4",
  "sbh-5",
  "sbh-6",
  "sbh-7",
  "sbh-8",
  "sbh-9",
  "sbh-10",
  "sbh-11",
  "sbh-12",
  "sbh-13",
  "sbh-14",
  "sbh-15",
  "sbh-16",
  "sbh-17",
  "sbh-18",
  "sbh-19",
  "sbh-20",
  "sbh-21",
  "sbh-22",
  "sbh-23",
  "sbh-24",
  "sbh-25",
  "sbh-26",
  "sbh-27",
  "sbh-28",
  "sbh-29",
  "sbh-30",
  "sbh-31",
  "sbh-32",
  "sbh-33",
  "sbh-34",
  "sbh-35",
  "sbh-36",
  "sbh-37",
  "sbh-38",
  "sbh-39",
  "sbh-40",
  "sbh-41",
];

List<String> kodsarawak = [
  "swk-0",
  "swk-1",
  "swk-2",
  "swk-3",
  "swk-4",
  "swk-5",
  "swk-6",
  "swk-7",
  "swk-8",
  "swk-9",
  "swk-10",
  "swk-11",
  "swk-12",
  "swk-13",
  "swk-14",
  "swk-15",
  "swk-16",
  "swk-17",
  "swk-18",
  "swk-19",
  "swk-20",
  "swk-21",
  "swk-22",
  "swk-23",
  "swk-24",
  "swk-25",
  "swk-26",
  "swk-27",
  "swk-28",
  "swk-29",
  "swk-30",
  "swk-31",
  "swk-32",
  "swk-33",
  "swk-34",
  "swk-35",
  "swk-36",
  "swk-37",
  "swk-38",
  "swk-39",
  "swk-40",
  "swk-41",
  "swk-42",
  "swk-43",
  "swk-44",
  "swk-45",
  "swk-46",
];

List<String> kodselangor = [
  "sgr-0",
  "sgr-1",
  "sgr-2",
  "sgr-3",
  "sgr-4",
  "sgr-5",
  "sgr-6",
  "sgr-7",
  "sgr-8",
  "sgr-9",
  "sgr-10",
];

List<String> kodterengganu = [
  "trg-0",
  "trg-1",
  "trg-2",
  "trg-3",
  "trg-4",
  "trg-5",
];

List<String> kodkl = [
  "wlp-0"
];

List<String> kodlabuan =[
  "wlp-1"
];

List<String> kodputrajaya = [
  "wlp-2"
];

List<String> lokasijohor = [
  'Batu Pahat',
  'Gemas',
  'Johor Bahru',
  'Kluang',
  'Kota Tinggi',
  'Mersing',
  'Muar',
  'Pemanggil',
  'Pontian',
  'Pulau Aur',
  'Segamat',
];

List<String> lokasikedah = [
  'Baling',
  'Bandar Baharu',
  'Kota Setar',
  'Kuala Muda',
  'Kubang Pasu',
  'Kulim',
  'Langkawi',
  'Padang Terap',
  'Pendang',
  'Pokok Sena',
  'Puncak Gunung Jerai',
  'Sik',
  'Yan',
];

List<String> lokasikelantan = [
  'Bachok',
  'Bertam',
  'Jeli',
  'Kota Bharu',
  'Kuala Krai',
  'Machang',
  'Mukim Chiku',
  'Mukim Galas',
  'Pasir Mas',
  'Pasir Puteh',
  'Tanah Merah',
  'Tumpat',
];

List<String> lokasimelaka = [
  "Alor Gajah",
  "Bandar Melaka",
  "Jasin",
  "Masjid Tanah",
  "Merlimau",
  "Nyalas",
];

List<String> lokasin9 = [
  "Jelebu",
  "Jempol",
  "Kuala Pilah",
  "Port Dickson",
  "Rembau",
  "Seremban",
  "Tampin"
];

List<String> lokasipahang = [
  "Bentong",
  'Bera',
  'Bukit Fraser',
  'Cameron Highland',
  'Chenor',
  'Genting Highlands',
  'Jerantut',
  'Kuala Lipis',
  'Kuantan',
  'Maran',
  'Muadzam Shah',
  'Pekan',
  'Pulau Tioman',
  'Raub',
  'Rompin',
  'Temerloh',
];

List<String> lokasipenang = ["Pulau Pinang"];

List<String> lokasiperak = [
  'Bagan Datoh',
  'Bagan Serai',
  'Batu Gajah',
  'Belum',
  'Beruas',
  'Bukit Larut',
  'Gerik',
  'Ipoh',
  'Kampar',
  'Kampung Gajah',
  'Kuala Kangsar',
  'Lenggong',
  'Lumut',
  'Parit',
  'Parit Buntar',
  'Pengkalan Hulu',
  'Pulau Pangkor',
  'Selama',
  'Setiawan',
  'Slim River',
  'Sri Iskandar',
  'Sungai Siput',
  'Taiping',
  'Tanjung Malim',
  'Tapah',
  'Teluk Intan',
  'Temengor'
];

List<String> lokasiperlis = [
  'Arau',
  'Kangar',
  'Padang Besar',
];

List<String> lokasisabah = [
  'Balong',
  'Bandar Bukit Garam',
  'Beaufort',
  'Beluran',
  'Gunung Kinabalu',
  'Kalabakan',
  'Keningau',
  'Kota Belud',
  'Kota Kinabalu',
  'Kota Marudu',
  'Kuala Penyu',
  'Kuamut',
  'Kudat',
  'Kunak',
  'Lahat Datu',
  'Long Pa Sia',
  'Membakut',
  'Merotai',
  'Nabawan',
  'Papar',
  'Penampang',
  'Pensiangan',
  'Pinangah',
  'Pitas',
  'Pulau Banggi',
  'Ranau',
  'Sahabat',
  'Sandakan',
  'Semawang',
  'Semporna',
  'Silabukan',
  'Sipitang',
  'Tambisan',
  'Tambunan',
  'Tawau',
  'Telupit',
  'Temanggong',
  'Tenom',
  'Terusan',
  'Tuaran',
  'Tungku',
  'Weston',
];

List<String> lokasisarawak = [
  'Bau',
  'Bekenu',
  'Belaga',
  'Belawai',
  'Belingan',
  'Betong',
  'Bintulu',
  'Bitangor',
  'Dalat',
  'Daro',
  'Debak',
  'Engkelili',
  'Igan',
  'Julau',
  'Kabong',
  'Kanowit',
  'Kapit',
  'Kuching',
  'Lawas',
  'Limbang',
  'Lingga',
  'Lundu',
  'Marudi',
  'Matu',
  'Meludam',
  'Miri',
  'Niah',
  'Oya',
  'Pusa',
  'Rajang',
  'Roban',
  'Samarahan',
  'Saratok',
  'Sarikei',
  'Sebauh',
  'Sebuyau',
  'Sematan',
  'Serian',
  'Sibu',
  'Sibuti',
  'Simunjan',
  'Song',
  'Spaoh',
  'Sri Aman',
  'Sundar',
  'Tatau',
  'Terusan',
];

List<String> lokasiselangor = [
  'Gombak',
  'Hulu Langat',
  'Hulu Selangor',
  'Klang',
  'Kuala Langat',
  'Kuala Selangor',
  'Petaling',
  'Rawang',
  'Sabak Bernam',
  'Sepang',
  'Shah Alam'
];

List<String> lokasiterengganu = [
  'Besut' 	,
'Hulu Terrenganu' 	,
'Kemaman Dungun' ,
'Kuala Terengganu' 	,
'Marang' ,
'Setiu',
];

List<String>  lokasikl = [
  'Kuala Lumpur' 	
];

List<String> lokasilabuan = [
  'Labuan'
];

List<String> lokasiputrajaya= [
  'Putrajaya'
];