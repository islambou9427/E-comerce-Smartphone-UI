import 'package:flutter/material.dart';

import '../../constants.dart';

class BottomProducts extends StatelessWidget {
  const BottomProducts({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/bottom_img_1.png'),
                    fit: BoxFit.cover)),
            margin: EdgeInsets.only(
                left: kDefaultPadding, top: kDefaultPadding, bottom: 10),
            width: size.width * 0.8,
            height: 180,
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/bottom_img_2.png'),
                    fit: BoxFit.cover)),
            margin: EdgeInsets.only(
                left: kDefaultPadding,
                top: kDefaultPadding,
                bottom: 10,
                right: 20),
            width: size.width * 0.8,
            height: 180,
            // child: Image.asset('assets/images/bottom_img_2.png'),
          ),
        ],
      ),
    );
  }
}
