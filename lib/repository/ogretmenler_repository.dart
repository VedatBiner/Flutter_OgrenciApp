import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OgretmenlerRepository extends ChangeNotifier{
  List ogretmenler = [
    Ogretmen("Faruk", "Yılmaz", 18, "Erkek"),
    Ogretmen("Semiha", "Çelik", 20, "Kadın")
  ];
}

final ogretmenlerProvider = ChangeNotifierProvider((ref) {
  return OgretmenlerRepository();
});

class Ogretmen{
  String ad;
  String soyad;
  int yas;
  String cinsiyet;

  Ogretmen(this.ad, this.soyad, this.yas, this.cinsiyet);
}