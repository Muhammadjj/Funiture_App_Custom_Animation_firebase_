import 'package:flutter/material.dart';
import 'package:furniture_app/Resources/resources.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipOval(
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[300],
            ),
            child: Image.asset(
              "assets/images/user.png",
            ),
          ),
        ),
        SizedBox(
          width: size.width * 0.03,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Decoration",
              style: Resources.textStyle.decoratedTextStyle(),
            ),
            Text(
              "Room",
              style: Resources.textStyle.roomTextStyle(),
            ),
          ],
        ),
      ],
    );
  }
}
