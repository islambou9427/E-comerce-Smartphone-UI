import 'package:EcommerceUI/details/componants/Dtails_screen.dart';
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
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreens(),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/3.jpg'),
                      fit: BoxFit.cover)),
              margin: EdgeInsets.only(
                  left: kDefaultPadding, top: kDefaultPadding, bottom: 10),
              width: size.width * 0.8,
              height: 180,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailScreens(),
                  ));
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/images/2.jpeg'),
                      fit: BoxFit.cover)),
              margin: EdgeInsets.only(
                  left: kDefaultPadding,
                  top: kDefaultPadding,
                  bottom: 10,
                  right: 20),
              width: size.width * 0.8,
              height: 180,
            ),
          ),
        ],
      ),
    );
  }
}
