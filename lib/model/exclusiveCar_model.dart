import 'package:flutter/material.dart';
import 'package:new_rental_car/const/images.dart';

class ExclusiveModel {
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
  ExclusiveModel(
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
  static List<ExclusiveModel> exclusiveList = [
    ExclusiveModel(
        carLogo: 'carLogo',
        carName: 'McLaren P1 GTR',
        carSpeed: '330 km',
        carRating: '4.1',
        recomandation: '93%',
        price: '1000',
        backgroundClr: const Color.fromARGB(255, 255, 116, 89),
        sideView: e1,
        carFrontView: ed1,
        logo: porshe),
    ExclusiveModel(
        carLogo: 'Lamborghini Urus',
        carName: 'Testing 2',
        carSpeed: '390 km',
        carRating: '4.2',
        recomandation: '92%',
        price: '1200',
        backgroundClr: const Color.fromARGB(255, 180, 138, 253),
        sideView: p2,
        carFrontView: pd2,
        logo: lambo),
  ];
}
