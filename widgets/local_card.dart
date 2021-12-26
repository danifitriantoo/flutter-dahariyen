import 'package:dahariyen_app/models/category.dart';
import 'package:dahariyen_app/models/local.dart';
import 'package:dahariyen_app/pages/detail_page.dart';
import 'package:dahariyen_app/theme.dart';
import 'package:flutter/material.dart';

class LocalCard extends StatelessWidget {
  final Local local;
  LocalCard(this.local);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        height: 80,
        width: 250,
        child: Column(
          children: [
            GestureDetector(
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailPage()),
                        );
                      },
                      child: Image.asset(
                        local.imageUrl,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        local.name,
                        style: blackTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        local.location,
                        style: blackTextStyle.copyWith(
                          fontSize: 16,
                          color: Colors.black54,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
