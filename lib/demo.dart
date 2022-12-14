import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Size size = MediaQuery.of(context).size;
    return Row(
      children: <Widget>[
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "AAAAAAAAA\n",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    ?.copyWith(color: kTextColor, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Spacer(),
        Text(
          "\$1000",
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: kPrimaryColor),
        )
      ],
    );
  }
}
