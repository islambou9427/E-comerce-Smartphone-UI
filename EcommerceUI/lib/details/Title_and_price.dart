import 'package:EcommerceUI/constants.dart';
import 'package:flutter/material.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    Key key,
    this.title,
    this.contry,
    this.price,
  }) : super(key: key);
  final String title, contry;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n',
                  style: Theme.of(context).textTheme.headline4.copyWith(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: '$contry',
                  style: TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Text('\$$price',
              style: Theme.of(context).textTheme.headline4.copyWith(
                    color: kPrimaryColor,
                  )),
        ],
      ),
    );
  }
}
