import 'package:EcommerceUI/constants.dart';
import 'package:EcommerceUI/details/Title_and_price.dart';
import 'package:flutter/material.dart';

import 'ImageCardItem.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageCardItem(size: size),
          TitleAndPrice(
            title: 'Samsung',
            contry: 'Russia',
            price: 560,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 85,
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(50))),
                    color: kPrimaryColor,
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              SizedBox(
                width: size.width / 2,
                height: 85,
                child: Expanded(
                    child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'Description',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                )),
              )
            ],
          ),
        ],
      ),
    );
  }
}
