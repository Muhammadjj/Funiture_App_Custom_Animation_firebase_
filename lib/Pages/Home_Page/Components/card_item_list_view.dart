import 'package:flutter/material.dart';
import 'package:furniture_app/Resources/const.dart';
import '../../../Controller/routes_method.dart';
import '../../../Model/detail_model_class.dart';
import '../../../widgets/category_widget.dart';

Widget listView({required BuildContext context, catListKey}) {
  return Material(
    color: Colors.transparent,
    child: SizedBox(
      key: catListKey,
      height: 83,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Offset offset =
                    (catListKey.currentContext!.findRenderObject() as RenderBox)
                        .localToGlobal(Offset.zero);
                Navigator.pushNamed(context, RoutesName.detailPage,
                    arguments: DetailModelClass(
                        catListOffset: offset, selectedCat: index));
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CategoryWidget(
                  category: categories[index],
                ),
              ),
            );
          }),
    ),
  );
}
