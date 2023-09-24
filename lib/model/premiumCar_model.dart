import 'package:flutter/material.dart';

import '../const/images.dart';

class PremiumModel {
  String carLogo;
  String carName;
  String carSpeed;
  String carRating;
  String recomandation;
  String price;
  Color backgroundClr;
  String sideView;
  String carFrontView;
  String logo;
  PremiumModel(
      {required this.carLogo,
      required this.carName,
      required this.carSpeed,
      required this.carRating,
      required this.recomandation,
      required this.price,
      required this.backgroundClr,
      required this.sideView,
      required this.carFrontView,
      required this.logo});
  static List<PremiumModel> premiumCarList = [
    PremiumModel(
        carLogo: 'carLogo',
        carName: 'Porshe 911 GT3',
        carSpeed: '300 km',
        carRating: '4.3',
        recomandation: '82%',
        price: '700',
        backgroundClr: const Color.fromARGB(255, 255, 229, 100),
        sideView: p1,
        carFrontView: pd1,
        logo: porshe),
    PremiumModel(
        carLogo: 'Lamborghini',
        carName: 'Lamborghini',
        carSpeed: '420 km',
        carRating: '4.9',
        recomandation: '97%',
        price: '900',
        backgroundClr: const Color.fromARGB(255, 255, 142, 111),
        sideView: p3,
        carFrontView: pd3,
        logo: lambo),
    PremiumModel(
        carLogo: 'carLogo',
        carName: 'Ferrari  ',
        carSpeed: '330 km',
        carRating: '4.7',
        recomandation: '89%',
        price: '999',
        backgroundClr: const Color.fromARGB(255, 132, 150, 250),
        sideView: p2,
        carFrontView: pd2,
        logo: lambo),
  ];
}
