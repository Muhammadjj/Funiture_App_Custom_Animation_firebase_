import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:furniture_app/Resources/resources.dart';
import 'package:furniture_app/widgets/header.dart';
import '../../Resources/const.dart';
import '../../widgets/product_card.dart';
import 'Components/card_item_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey catListKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Scaffold(
        body: SafeArea(
      child: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: size.height * 0.02,
            ),
            // ! End User Name, Description and Pic .
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Header(),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Hero(
                      tag: "blue_card",
                      child: Material(
                        child: Container(
                          width: size.width,
                          height: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Theme.of(context).primaryColor),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Image.asset(
                                            'assets/images/weather.png',
                                            width: 25,
                                          ),
                                          Text(
                                            " 32'C",
                                            style: Resources.textStyle
                                                .celsiusTextStyle24(),
                                          )
                                        ],
                                      ),
                                      Text("24",
                                          style: Resources.textStyle
                                              .textStyle24()),
                                      Text(
                                        "January",
                                        style: Resources.textStyle
                                            .januaryTextStyle(),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
                  // ! Card Container List View and CallBackFunction .
                  Positioned(
                      bottom: 0,
                      right: 1,
                      left: 1,
                      child: Hero(
                        tag: 'cat',
                        child:
                            listView(context: context, catListKey: catListKey),
                      )),
                  Positioned(
                    top: 0,
                    right: 10,
                    child: Image.asset(
                      'assets/images/ladder.png',
                      height: 180,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recommend',
                    style: Resources.textStyle.recommendedTextStyle(),
                  ),
                  SvgPicture.asset(
                    'assets/svg/right_arrow.svg',
                    height: 18,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: recommend.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ProductCard(product: recommend[index]),
                    );
                  }),
            )
          ],
        ),
      ]),
    ));
  }
}
