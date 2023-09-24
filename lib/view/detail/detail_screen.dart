import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_rental_car/const/colors.dart';
import 'package:new_rental_car/const/const.dart';
import 'package:new_rental_car/const/images.dart';
import 'package:new_rental_car/utils/appText.dart';
import 'package:new_rental_car/utils/detailPainter.dart';
import 'package:new_rental_car/utils/extension.dart';

class DetailScreen extends StatelessWidget {
  final item;
  const DetailScreen({super.key, this.item});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                radius: 22,
                backgroundColor: blakish,
                child: const Icon(Icons.arrow_back),
              ),
            ),
            10.height,
            Stack(
              children: [
                SizedBox(
                  height: s.height * 0.7,
                  width: s.width,
                  child: CustomPaint(
                    painter: DetailPainter(item.backgroundClr),
                    child: Padding(
                      padding: pagePadding,
                      child: Column(
                        children: [
                          // 40.height,
                          Container(
                            width: s.width * 0.77,
                            height: s.height * 0.37,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(item.carFrontView),
                                    fit: BoxFit.cover)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                35.height,
                                Row(
                                  children: [
                                    SizedBox(width: s.width * 0.27),
                                    Text(
                                      'Car Details',
                                      style: AppTxT(context)
                                          .title
                                          .copyWith(color: Colors.black),
                                    ),
                                    const Spacer(),
                                    Image.asset(
                                      filter,
                                      height: 30,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          Row(
                            children: [
                              CircleAvatar(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(item.logo),
                                ),
                              ),
                              20.width,
                              Text(
                                item.carName,
                                style: AppTxT(context).heading.copyWith(
                                    fontSize: 25,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          10.height,
                          Text(
                            'The car will give you an unforgettable comf and feeling of great speed',
                            style: AppTxT(context)
                                .subtitle
                                .copyWith(color: Colors.black, fontSize: 16),
                          ),
                          10.height,
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(safety, height: 20),
                              7.width,
                              Text('For your safety please follow guideline !',
                                  style: AppTxT(context).subtitle.copyWith(
                                      fontSize: s.width * 0.035,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                          10.height,
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: blakish!)),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 8),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(person1),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5.0),
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(person2),
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundImage: AssetImage(person3),
                                  ),
                                  10.width,
                                  Text(item.carRating,
                                      style: AppTxT(context)
                                          .title
                                          .copyWith(color: Colors.black)),
                                  const Spacer(),
                                  Text(
                                    'Reviews',
                                    style: AppTxT(context)
                                        .subtitle
                                        .copyWith(color: Colors.deepPurple),
                                  ),
                                  10.width,
                                  const CircleAvatar(
                                      backgroundColor: Colors.deepPurple,
                                      radius: 12,
                                      child: Icon(Icons.keyboard_arrow_right)),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                        height: 4,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: s.height * 0.11,
              child: ListView.builder(
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(left: 15),
                    margin: const EdgeInsets.only(left: 15),
                    width: s.width * 0.25,
                    decoration: BoxDecoration(
                        color: blakish,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        10.height,
                        Container(
                          height: s.height * 0.06,
                          width: s.width * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    index == 0
                                        ? carSpeed
                                        : index == 1
                                            ? engine
                                            : suspension,
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                        5.height,
                        Text(
                          index == 0
                              ? item.carSpeed
                              : index == 1
                                  ? '540 hs'
                                  : 'Deep',
                          style: TextStyle(fontSize: s.width * 0.032),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: s.height * 0.08,
        width: double.infinity,
        padding: pagePadding,

        //color: Colors.red,
        child: Row(
          children: [
            Text('\$${item.price}',
                style: AppTxT(context).title.copyWith(fontSize: 25)),
            Text(' / day',
                style: AppTxT(context)
                    .subtitle
                    .copyWith(color: const Color.fromARGB(255, 140, 140, 140))),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Text(
                    'Book Car',
                    style: AppTxT(context)
                        .title
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                  10.width,
                  Transform(
                      alignment: Alignment.center,
                      transform: Matrix4.rotationZ(pi),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
