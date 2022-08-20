import 'package:flutter/material.dart';

import 'package:plants_app/pages/detail_page.dart';
import 'package:plants_app/theme.dart';
import 'package:plants_app/models/plant_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning,',
                          style: defaultTextStyle.copyWith(
                            fontSize: 14.0,
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Alfonso Dorwart',
                          style: defaultTextStyle.copyWith(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.account_circle_outlined,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    Container(
                      height: 45.0,
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        border: Border.all(color: greyColor),
                        boxShadow: [
                          BoxShadow(
                            color: greyColor.withOpacity(0.15),
                            blurRadius: 10,
                            offset: const Offset(0, 0),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 45,
                            width: 250,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.search,
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        width: 45.0,
                        height: 45.0,
                        decoration: BoxDecoration(
                          color: youngGreyColor,
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: const Icon(
                          Icons.mic_none,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        height: 120,
                        width: 250,
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Get Discount',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 18.0,
                                  ),
                                ),
                                Text(
                                  ' until 50%',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/image2.png',
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10.0),
                        height: 120,
                        width: 250,
                        decoration: BoxDecoration(
                          color: greenColor,
                          borderRadius: BorderRadius.circular(
                            20.0,
                          ),
                        ),
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Get Discount',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 18.0,
                                  ),
                                ),
                                Text(
                                  ' until 50%',
                                  style: whiteTextStyle.copyWith(
                                    fontSize: 18.0,
                                  ),
                                ),
                              ],
                            ),
                            Image.asset(
                              'assets/image3.png',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      padding: const EdgeInsets.all(
                        10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        border: Border.all(
                          color: greyColor,
                        ),
                      ),
                      child: const Text(
                        'All',
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(
                        10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        border: Border.all(
                          color: greyColor,
                        ),
                      ),
                      child: const Text(
                        'Outdoors',
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(
                        10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        border: Border.all(
                          color: greyColor,
                        ),
                      ),
                      child: const Text(
                        'Indoors',
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(
                        10.0,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        border: Border.all(
                          color: greyColor,
                        ),
                      ),
                      child: const Text(
                        'Garden',
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50.0,
                ),
                SizedBox(
                  height: 300.0,
                  child: ListView.builder(
                    itemCount: tanaman.length,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (itemBuilder, index) {
                      Plant plants = tanaman[index];
                      return Container(
                        padding: const EdgeInsets.all(
                          16.0,
                        ),
                        width: 200,
                        margin: const EdgeInsets.only(right: 20, bottom: 10),
                        decoration: BoxDecoration(
                          color: mintGreenColor,
                          boxShadow: [
                            BoxShadow(
                              color: greenColor.withOpacity(0.1),
                              blurRadius: 10,
                              offset: const Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  Image.asset(
                                    tanaman[index].image,
                                    width: 100,
                                    height: 100,
                                  ),
                                  const SizedBox(width: 20.0),
                                  Column(
                                    children: [
                                      Text(
                                        tanaman[index].name,
                                        style: TextStyle(
                                          color: blackColor.withOpacity(0.7),
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      const SizedBox(height: 10.0),
                                      Text(
                                        '\$${tanaman[index].price}',
                                        style: TextStyle(
                                          color: blackColor.withOpacity(0.4),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 20.0),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: ((context) =>
                                                  DetailPage(plants: plants))));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(140, 44),
                                        primary: greenColor.withOpacity(
                                          0.5,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            15.0,
                                          ),
                                        )),
                                    child: const Text(
                                      'Detail',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                                color: greenColor,
                              ),
                              child: const Icon(
                                Icons.add,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )),
    ));
  }
}
