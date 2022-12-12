import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'head_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and with of our screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size),
          Row(
            children: [
              TitleWithCustomUnderline(),
              Spacer(),
              TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.teal,
                    shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  onPressed: () {},
                  child: Text(
                    'More',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 24,
      child: Stack(
        children: [
          const Padding(
              padding: EdgeInsets.only(left: kDefaultPadding / 4),
              child: Text(
                'Recomended',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ))
        ],
      ),
    );
  }
}
