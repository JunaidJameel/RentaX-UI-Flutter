import 'package:flutter/material.dart';
import 'package:new_rental_car/const/colors.dart';
import 'package:new_rental_car/const/const.dart';
import 'package:new_rental_car/const/images.dart';
import 'package:new_rental_car/model/exclusiveCar_model.dart';
import 'package:new_rental_car/model/premiumCar_model.dart';
import 'package:new_rental_car/utils/appText.dart';
import 'package:new_rental_car/utils/extension.dart';
import 'package:new_rental_car/view/home/widgets/car_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: pagePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            50.height,
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'RentaX',
                      style: AppTxT(context).subtitle.copyWith(fontSize: 23),
                    ),
                    4.height,
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Image.asset(
                          location,
                          height: 25,
                        ),
                        10.width,
                        Text(
                          'St. Celina, Delaware 10299',
                          style: AppTxT(context).subtitle.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromARGB(255, 128, 186, 233)),
                        )
                      ],
                    )
                  ],
                ),
                const Spacer(),
                SizedBox(
                    child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Image.asset(bell, height: 30, color: Colors.white),
                    const Padding(
                      padding: EdgeInsets.only(right: 3.0, top: 2),
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ],
                )),
                10.width,
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    const CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWFuJTIwc2lkZXxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80'),
                      radius: 25,
                      backgroundColor: Color.fromARGB(255, 2, 110, 100),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.black, width: 2)),
                      child: Icon(
                        Icons.add,
                        size: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            20.height,
            Text(
              'Premium\n& Rental Car',
              style: AppTxT(context)
                  .title
                  .copyWith(fontSize: 32, fontWeight: FontWeight.w500),
            ),
            30.height,
            SizedBox(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  TabBar(
                    indicatorWeight: 2,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,
                    unselectedLabelColor: lightGrey,
                    controller: _tabController,
                    dividerColor: lightGrey,
                    labelStyle: AppTxT(context)
                        .title
                        .copyWith(fontWeight: FontWeight.w500),
                    tabs: const [
                      Tab(
                        text: 'Premium',
                      ),
                      Tab(text: 'Exclusive'),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 6, vertical: 1),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.deepPurple),
                      child: Text(
                        'New',
                        style: AppTxT(context).heading.copyWith(fontSize: 10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            20.height,
            Row(
              children: [
                Text(
                  'Choose Date',
                  style: AppTxT(context)
                      .title
                      .copyWith(color: lightGrey, fontSize: 14),
                ),
                10.width,
                Icon(Icons.calendar_month, color: lightGrey, size: 18),
              ],
            ),
            10.height,
            Row(
              children: [
                CircleAvatar(
                  radius: 10,
                  backgroundColor: greenColor,
                  child: const Icon(Icons.check, color: Colors.black, size: 19),
                ),
                10.width,
                Text(
                  'Today, 13 May',
                  style: AppTxT(context).title.copyWith(fontSize: 17),
                ),
                5.width,
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                  size: 28,
                )
              ],
            ),
            15.height,
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CarWidget(itemList: PremiumModel.premiumCarList),
                  CarWidget(itemList: ExclusiveModel.exclusiveList),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 45,
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              5.width,
              Image.asset(home, color: Colors.amber, height: 30),
              Image.asset(settings, color: Colors.white, height: 30),
              Image.asset(stats, color: Colors.white, height: 30),
              Image.asset(person, color: Colors.white, height: 30),
              5.width,
            ],
          ),
        ),
      ),
    );
  }
}
