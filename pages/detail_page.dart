import 'package:dahariyen_app/models/category.dart';
import 'package:dahariyen_app/models/local.dart';
import 'package:dahariyen_app/theme.dart';
import 'package:dahariyen_app/widgets/category_card.dart';
import 'package:dahariyen_app/widgets/local_card.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 2,
              child: Stack(
                children: [
                  Image.asset(
                    'assets/header/thumb.png',
                    width: MediaQuery.of(context).size.width,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 15,
                      top: 70,
                    ),
                    child: Text(
                      'Rumah Makan Sinar Pagi',
                      style: whiteTextStyle.copyWith(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      top: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/header/1.png',
                          width: 50,
                        ),
                        Image.asset(
                          'assets/header/2.png',
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                padding: EdgeInsets.all(0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 10,
                        left: 20,
                        right: 10,
                        bottom: 0,
                      ),
                      child: Text(
                        'Best Choices',
                        style: greyTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/menu/mn1.png',
                            width: 150,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/menu/mn2.png',
                            width: 150,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/menu/mn1.png',
                            width: 150,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Image.asset(
                            'assets/menu/mn2.png',
                            width: 150,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 0,
                        left: 20,
                        right: 10,
                        bottom: 0,
                      ),
                      child: Text(
                        'Menu',
                        style: greyTextStyle.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 0,
                        left: 20,
                        right: 10,
                        bottom: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                'assets/menu/1.png',
                                width: 65,
                              ),
                              Text(
                                'Foods',
                                style: greyTextStyle.copyWith(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/menu/2.png',
                                width: 65,
                              ),
                              Text(
                                'Drinks',
                                style: greyTextStyle.copyWith(
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/menu/3.png',
                                width: 65,
                              ),
                              Text(
                                'Desert',
                                style: greyTextStyle.copyWith(
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                'assets/menu/4.png',
                                width: 65,
                              ),
                              Text(
                                'Misc',
                                style: greyTextStyle.copyWith(
                                  fontSize: 18,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: edge, right: edge, top: edge),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Text(
                    'Foods',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  LocalCard(
                    Local(
                      id: 8,
                      imageUrl: 'assets/card/tulungagung.png',
                      name: 'Empal Gentong',
                      location: 'Cirebon, West Java',
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  LocalCard(
                    Local(
                      id: 9,
                      imageUrl: 'assets/card/cirebon.png',
                      name: 'Tahu Gejrot',
                      location: 'Cirebon, West Java',
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  LocalCard(
                    Local(
                      id: 10,
                      imageUrl: 'assets/card/tulungagung.png',
                      name: 'Nasi Pecel',
                      location: 'Tulungangung, East Java',
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  LocalCard(
                    Local(
                      id: 11,
                      imageUrl: 'assets/card/cirebon.png',
                      name: 'Empan Gentong',
                      location: 'Cirebon, East Java',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
