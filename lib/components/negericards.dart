import 'package:flutter/material.dart';
import 'package:waktusolatimprovised/components/constants.dart';
import 'easyBadgeCard.dart';
import 'flags.dart';


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
          description: '4 Zon',
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
          description: '7 Zon',
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
          description: '3 Zon',
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
          description: '1 Zon',
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
          description: '2 Zon',
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
          description: '6 Zon',
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
          title: 'Penang',
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
          description: '7 Zon',
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
          description: '1 Zon',
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
          description: '9 Zon',
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
          description: '9 Zon',
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
          title: 'Sabah',
          description: '3 Zon',
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
          description: '4 Zon',
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
          title: 'Putrajaya',
          description: '1 Zon',
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
          title: 'Kuala Lumpur',
          description: '1 Zon',
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
          title: 'Labuan',
          description: '1 Zon',
          suffixIcon: Icons.chevron_right,
          suffixIconColor: Colors.green[500],
        )),
  );
}

