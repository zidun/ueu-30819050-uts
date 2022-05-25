import 'package:flutter/material.dart';
import 'package:uts_30819050_ramdan/components/ImageItem.dart';
import 'package:uts_30819050_ramdan/utils/constants.dart';
import 'package:uts_30819050_ramdan/utils/helpers.dart';

class DetailBooks extends StatelessWidget {
  final String title, date, author, image, text;

  const DetailBooks({
  Key? key,
  required this.title,
  required this.date,
  required this.image,
  required this.author,
  required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final ThemeData themeData = Theme.of(context);
    double padding = 24;
    final sizePadding = EdgeInsets.symmetric(horizontal: padding);
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Buku"),
        backgroundColor: COLOR_BLACK,
      ),
      backgroundColor: COLOR_WHITE,
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spacingV(48),
              Center(child: ImageItem(url: image)),
              spacingV(padding),
              Padding(
                padding: sizePadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(title, style: themeData.textTheme.headline2),
                    spacingV(8),
                    Text("Penulis : "+author, style: themeData.textTheme.headline4),
                    spacingV(8),
                    Text("Rilis : "+date, style: themeData.textTheme.headline4),
                    spacingV(24),
                    Text(text, style: themeData.textTheme.bodyText2),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      
    );
  }
}
