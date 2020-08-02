import 'package:flutter/material.dart';

import 'Header-with-search.dart';
import 'Rec-more.dart';
import 'RecomandProduct.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderSearchBox(size: size),
          Container(
            height: 24,
            child: Stack(
              children: <Widget>[
                RecomandedMore(
                  title: 'Recomanded',
                  press: () {},
                ),
              ],
            ),
          ),
          RecomamnedProduct(),
        ],
      ),
    );
  }
}
