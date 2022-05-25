import 'package:flutter/material.dart';
import 'package:uts_30819050_ramdan/utils/constants.dart';


class CategoryItem extends StatelessWidget {
  final String category;
  final bool isActive;
  const CategoryItem({Key? key, required this.category, required this.isActive }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return InkWell(
      onTap: () {
        print("category :" + category);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
            color: isActive ? COLOR_BLACK : COLOR_WHITE,
            borderRadius: BorderRadius.all(Radius.circular(4.0)),
            border: Border.all(color: COLOR_BLACK.withAlpha(40), width: 1)
        ),
        child: Text(category, style: isActive ? themeData.textTheme.subtitle1 : themeData.textTheme.subtitle2,),
      ),
    );
  }
}
