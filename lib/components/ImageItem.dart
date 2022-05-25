import 'package:flutter/material.dart';
import 'package:uts_30819050_ramdan/pages/DetailBooks.dart';
import 'package:uts_30819050_ramdan/utils/constants.dart';

class ImageItem extends StatelessWidget {
  final String url;
  const ImageItem({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    double widthItem = size.width/2.4;
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailBooks(
              title: "The Psychology of Money: Timeless lessons on wealth, greed, and happiness",
              image: url,
              author: "Morgan Housel",
              date: "Sep 2020",
              text: "Doing well with money isn’t necessarily about what you know. It’s about how you behave. And behavior is hard to teach, even to really smart people.\n\nMoney—investing, personal finance, and business decisions—is typically taught as a math-based field, where data and formulas tell us exactly what to do. But in the real world people don’t make financial decisions on a spreadsheet. They make them at the dinner table, or in a meeting room, where personal history, your own unique view of the world, ego, pride, marketing, and odd incentives are scrambled together.\n\nIn The Psychology of Money, award-winning author Morgan Housel shares 19 short stories exploring the strange ways people think about money and teaches you how to make better sense of one of life’s most important topics",
            )));
      },
      child: ClipRRect(
        // borderRadius: BorderRadius.circular(20.0),
        child: Container(
          width: widthItem,
          height: widthItem * 5 / 3,
          margin: EdgeInsets.only(right: 12, left: 12, bottom: 24),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              boxShadow: [
                BoxShadow(
                  color: COLOR_BLACK.withAlpha(50),
                  blurRadius: 10,
                  offset: const Offset(1, 5),
                  spreadRadius: 0.5,
                ),
              ],
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(url),
              )
          ),
        ),
      ),
    );
  }
}
