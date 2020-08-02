import 'package:flutter/material.dart';

import '../../constants.dart';

class RecomamnedProduct extends StatelessWidget {
  const RecomamnedProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendeSmart(
            image: 'assets/images/image_1.png',
            title: 'samsung',
            country: 'chine',
            price: 600,
            press: () {},
          ),
          RecommendeSmart(
            image: 'assets/images/image_2.png',
            title: 'samsung',
            country: 'chine',
            price: 600,
            press: () {},
          ),
          RecommendeSmart(
            image: 'assets/images/image_3.png',
            title: 'samsung',
            country: 'chine',
            price: 600,
            press: () {},
          ),
          RecommendeSmart(
            image: 'assets/images/image_3.png',
            title: 'samsung',
            country: 'chine',
            price: 600,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendeSmart extends StatelessWidget {
  const RecommendeSmart({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);
  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(left: 18, top: 15, bottom: 15),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 12),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                        text: "$title \n".toUpperCase(),
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                          text: "$country \n".toUpperCase(),
                          style:
                              TextStyle(color: kPrimaryColor.withOpacity(0.5))),
                    ]),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
