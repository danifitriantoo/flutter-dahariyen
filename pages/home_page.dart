import 'package:dahariyen_app/models/category.dart';
import 'package:dahariyen_app/models/local.dart';
import 'package:dahariyen_app/theme.dart';
import 'package:dahariyen_app/widgets/category_card.dart';
import 'package:dahariyen_app/widgets/local_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff8CBFFA),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Container(
              margin: EdgeInsets.only(
                left: edge,
                right: edge,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'dahaRiyen',
                    style: whiteTextStyle.copyWith(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.asset(
                    'assets/icon/profile.png',
                    width: 40,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              margin: EdgeInsets.only(
                left: edge,
                right: edge,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Snacks',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Main Course',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Drinks',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    'Desert',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 24,
                  ),
                  CategoryCard(
                    Category(
                      id: 1,
                      imageUrl: 'assets/card/cirebon.png',
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CategoryCard(
                    Category(
                      id: 2,
                      imageUrl: 'assets/card/tulungagung.png',
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CategoryCard(
                    Category(
                      id: 2,
                      imageUrl: 'assets/card/cirebon.png',
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  CategoryCard(
                    Category(
                      id: 3,
                      imageUrl: 'assets/card/tulungagung.png',
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              color: Colors.white,
              height: (MediaQuery.of(context).size.height / 2) + 30,
              child: Container(
                margin: EdgeInsets.only(left: edge, right: edge, top: edge),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Text(
                      'Cirebon Taste',
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
                        id: 1,
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
                        id: 1,
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
                        id: 1,
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
                        id: 1,
                        imageUrl: 'assets/card/cirebon.png',
                        name: 'Empan Gentong',
                        location: 'Cirebon, East Java',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
