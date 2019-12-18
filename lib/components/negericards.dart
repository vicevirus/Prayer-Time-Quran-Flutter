import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'easyBadgeCard.dart';
import 'flags.dart';


Card lokasiOnline() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage('images/malaysiamap.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: kalerTema,
          title: 'Cari berdasarkan lokasi',
          description: 'Sila pastikan mod lokasi anda diset kepada \"High Accuracy"',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card johor() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(johorFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: johorColour,
          title: 'Johor',
          description: '${kodjohor.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card kedah() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(kedahFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: kedahColour,
          title: 'Kedah',
          description: '${kodkedah.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card kelantan() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(kelantanFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: kelantanColour,
          title: 'Kelantan',
          description: '${kodkelantan.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card melaka() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(melakaFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: melakaColour,
          title: 'Melaka',
          description: '${kodmelaka.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card negeriSembilan() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(n9Flag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: negeriSembilanColour,
          title: 'Negeri Sembilan',
          description: '${kodn9.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card pahang() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(pahangFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: pahangColour,
          title: 'Pahang',
          description: '${kodpahang.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card penang() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(penangFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: penangColour,
          title: '${kodpenang.length} Kawasan',
          description: '1 Zon',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card perak() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(perakFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: perakColour,
          title: 'Perak',
          description: '${kodperak.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card perlis() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(perlisFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: perlisColour,
          title: 'Perlis',
          description: '${kodperlis.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card sabah() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(sabahFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: sabahColour,
          title: 'Sabah',
          description: '${kodsabah.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card sarawak() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(sarawakFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: sarawakColour,
          title: 'Sarawak',
          description: '${kodsarawak.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card selangor() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(selangorFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: selangorColour,
          title: 'Selangor',
          description: '${kodselangor.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card terengganu() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(terengganuFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: terengganuColour,
          title: 'Terengganu',
          description: '${kodterengganu.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card putrajaya() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(putrajayaFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: putrajayaColour,
          title: 'Wilayah Persekutuan Putrajaya',
          description: '${kodputrajaya.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card kualalumpur() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(kualaLumpurFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: kualaLumpurColour,
          title: 'Wilayah Persekutuan Kuala Lumpur',
          description: '${kodkl.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

Card labuan() {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
    child: Container(
        padding: EdgeInsets.only(top: 70.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          image: DecorationImage(
            image: AssetImage(labuanFlag),
            fit: BoxFit.cover,
          ),
        ),
        child: EasyBadgeCard(
          rightBadge: labuanColour,
          title: 'Wilayah Persekutuan Labuan',
          description: '${kodlabuan.length} Kawasan',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

