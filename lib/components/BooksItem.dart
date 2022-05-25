import 'package:flutter/material.dart';
import 'package:uts_30819050_ramdan/pages/DetailBooks.dart';
import 'package:uts_30819050_ramdan/utils/constants.dart';
import 'package:uts_30819050_ramdan/utils/helpers.dart';


class BooksItem extends StatelessWidget {
  final dynamic itemData;
  const BooksItem({Key? key, required this.itemData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    final Size size = MediaQuery.of(context).size;
    double widthItem = size.width/5;

    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailBooks(
              title: itemData['title'],
              image: itemData['image'],
              author: itemData['author'],
              date: itemData['date'],
              text: itemData['text'],
            )));
      },
      child: Container(
        width: size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: widthItem,
              height: widthItem * 5 / 3,
              margin: EdgeInsets.only(right: 12, left: 12, bottom: 24),
              decoration:
                BoxDecoration(
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
                    image: NetworkImage(itemData["image"])
                  ),
                )
            ),
            Expanded(child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(itemData["title"], style: themeData.textTheme.headline2),
                spacingV(8),
                Text("Penulis : "+itemData["author"], style: themeData.textTheme.headline4),
                spacingV(8),
                Text("Rilis : "+itemData["date"], style: themeData.textTheme.headline4),
                spacingV(24),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
