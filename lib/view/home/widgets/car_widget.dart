import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_rental_car/const/colors.dart';
import 'package:new_rental_car/const/const.dart';
import 'package:new_rental_car/utils/appText.dart';
import 'package:new_rental_car/utils/extension.dart';
import 'package:new_rental_car/utils/painter.dart';

import '../../../const/images.dart';
import '../../detail/detail_screen.dart';

class CarWidget extends StatelessWidget {
  final List? itemList;
  const CarWidget({super.key, this.itemList});

  @override
  Widget build(BuildContext context) {
    var s = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: ListView.builder(
          itemCount: itemList!.length,
          itemBuilder: (context, index) {
            var item = itemList![index];
            //PremiumModel.premiumCarList[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailScreen(
                          item: item,
                        ),
                      ));
                },
                child: SizedBox(
                  height: s.height * 0.24,
                  child: Stack(
                    alignment: Alignment.bottomLeft,
                    children: [
                      Container(
                        height: s.height * 0.14,
                        width: s.width * 0.5,
                        decoration: BoxDecoration(
                            color: blakish,
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(30))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              // color: Colors.red,
                              height: s.height * 0.1,
                              width: s.width * 0.38,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  8.width,
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      15.height,
                                      Text(
                                        '1 day rental',
                                        style: AppTxT(context).subtitle,
                                      ),
                                      Text(
                                        '\$ ${item.price}',
                                        style: AppTxT(context).heading,
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 35.0),
                                    child: Transform(
                                      alignment: Alignment.center,
                                      transform: Matrix4.rotationZ(pi),
                                      child: Image.asset(
                                        arrow,
                                        color: Colors.white,
                                        height: 30,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            10.height,
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: s.height * 0.04,
                            width: s.width,
                            decoration: BoxDecoration(
                                color: item.backgroundClr,
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(25),
                                    topLeft: Radius.circular(25))),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: pagePadding,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Color',
                                        style: AppTxT(context)
                                            .subtitle
                                            .copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w400),
                                      ),
                                      10.width,
                                      const CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.blue,
                                      ),
                                      const Spacer(),
                                      const Icon(Icons.speed),
                                      10.width,
                                      Text(
                                        item.carSpeed,
                                        style: AppTxT(context)
                                            .subtitle
                                            .copyWith(
                                                color: Colors.black,
                                                fontWeight: FontWeight.w600),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: s.height * 0.2,
                            child: CustomPaint(
                              painter: RPSCustomPainter(item.backgroundClr),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          item.carName,
                                          style: AppTxT(context).title.copyWith(
                                              color: Colors.black,
                                              fontSize: 17),
                                        ),
                                        5.height,
                                        Row(
                                          children: [
                                            StackImages(s: s),
                                            10.width,
                                            Text(
                                              item.carRating,
                                              style: AppTxT(context)
                                                  .title
                                                  .copyWith(
                                                      color: Colors.black,
                                                      fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: s.height * 0.19,
                                      width: s.width * 0.45,
                                      decoration: BoxDecoration(
                                          //  color: Colors.white,
                                          image: DecorationImage(
                                              image: AssetImage(item.sideView),
                                              fit: BoxFit.fill)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ))
      ],
    );
  }
}

class StackImages extends StatelessWidget {
  const StackImages({
    super.key,
    required this.s,
  });

  final Size s;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.red,
      width: s.width * 0.18,
      height: s.height * 0.03,
      child: Stack(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(person1),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 21),
            child: CircleAvatar(
              backgroundImage: AssetImage(person2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 41),
            child: CircleAvatar(
              backgroundImage: AssetImage(person3),
            ),
          ),
        ],
      ),
    );
  }
}
