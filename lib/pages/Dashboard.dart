import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:uts_30819050_ramdan/components/BooksItem.dart';
import 'package:uts_30819050_ramdan/components/BorderIcon.dart';
import 'package:uts_30819050_ramdan/components/CategoryItem.dart';
import 'package:uts_30819050_ramdan/components/ImageItem.dart';
import 'package:uts_30819050_ramdan/dummy_books.dart';
import 'package:uts_30819050_ramdan/utils/constants.dart';
import 'package:uts_30819050_ramdan/utils/helpers.dart';

class DashboardPages extends StatelessWidget {
  const DashboardPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 24;
    final sizePadding = EdgeInsets.symmetric(horizontal: padding);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: COLOR_WHITE,
        shadowColor: COLOR_WHITE,
      ),
      backgroundColor: COLOR_WHITE,
      body:  Container(
        width: size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                spacingV(24),
                Padding(
                  padding: sizePadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BorderIcon(
                        padding: EdgeInsets.all(8.0),
                        height: 50,
                        width: 50,
                        child: Icon(
                          Icons.menu_rounded,
                          color: COLOR_BLACK,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage("assets/images/photos.jpeg") 
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                spacingV(padding),
              ],
            ),
            Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: sizePadding,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hi, 30189050 - Ramdan!", style: themeData.textTheme.headline2),
                            spacingV(4),
                            Text("Selamat Datang di E-Library Apps", style: themeData.textTheme.headline4),
                            spacingV(padding),
                          ],
                        ),
                      ),
                      Padding(
                          padding: sizePadding,
                          child: Container(
                            height: 48,
                            decoration: BoxDecoration(
                                color: COLOR_GREY.withAlpha(15),
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                border: Border.all(color: COLOR_BLACK.withAlpha(25), width: 1)),
                            padding: EdgeInsets.all(12),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.search_rounded,
                                  color: COLOR_BLACK.withAlpha(80),
                                ),
                                spacingH(12),
                                Text("Cari Judul Buku", style: themeData.textTheme.subtitle2),
                              ],
                            ),
                          )
                      ),
                      spacingV(padding),
                      Column(
                        children: [
                          Padding(
                            padding: sizePadding,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Lanjut Baca", style: themeData.textTheme.headline2),
                                RichText(
                                  text:  TextSpan(
                                    style: themeData.textTheme.bodyText1,
                                    text: "Lihat Semua",
                                    recognizer: TapGestureRecognizer()..onTap = () => print("Go To Detail"),
                                  ),
                                )
                              ],
                            ),
                          ),
                          spacingV(16),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(horizontal: 12),
                            physics: BouncingScrollPhysics(),
                            child: Row(
                              children: [
                                "https://books.google.com/books/publisher/content/images/frontcover/q8nrDwAAQBAJ?fife=w200-h300",
                                "https://books.google.com/books/publisher/content/images/frontcover/TnrrDwAAQBAJ?fife=w200-h300",
                                "https://books.google.com/books/publisher/content/images/frontcover/-CZwDwAAQBAJ?fife=w200-h300",
                                "https://books.google.com/books/content/images/frontcover/9TtEYz9Lw4kC?fife=w200-h300",
                                "https://books.google.com/books/publisher/content/images/frontcover/JIntDQAAQBAJ?fife=w200-h300"
                              ].map((image) => ImageItem(url: image)).toList(),
                            ),
                          ),
                          spacingV(16),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        physics: BouncingScrollPhysics(),
                        child: Row(
                          children: [
                            "Populer",
                            "Favorit",
                            "Terbaru",
                            "Terlama",
                          ].map((category) => CategoryItem(category:category, isActive: category == 'Populer',)).toList(),
                        ),
                      ),
                      spacingV(36),
                      Padding(
                        padding: sizePadding,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text("Populer", style: themeData.textTheme.headline2),
                            RichText(
                              text:  TextSpan(
                                style: themeData.textTheme.bodyText1,
                                text: "Lihat Semua",
                                recognizer: TapGestureRecognizer()..onTap = () => print("Go To Detail"),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: ListView.builder(
                            padding: EdgeInsets.all(24),
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: BOOKS_DATA.length,
                            itemBuilder: (context, item) {
                              return BooksItem(
                                itemData: BOOKS_DATA[item],
                              );
                            }),
                      ),
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
