import 'package:flutter/material.dart';

class AppTxT {
  final BuildContext context;

  AppTxT(this.context);

  TextStyle get heading => Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontSize: 22,
      fontWeight: FontWeight.w700,
      fontFamily: 'Poppins',
      color: Colors.white);
  TextStyle get title => Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: 'Poppins',
      color: Colors.white);
  TextStyle get subtitle => Theme.of(context).textTheme.bodyMedium!.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      fontFamily: 'Poppins',
      color: Colors.white);
}
