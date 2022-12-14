import 'package:flutter/material.dart';

import '../../../constants.dart';

class TitleWithCustomUnderline extends StatelessWidget {
  final String text;

  TitleWithCustomUnderline({required this.text});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // color: Colors.black,
      height: 24,
      child: Stack(
        children: [
          Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              child: Text(
                text,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
