import 'package:flutter/material.dart';
import 'package:plant_app/screens/home/components/title_with_custom_under_line.dart';

import '../../../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final Function press;

  TitleWithMoreBtn({required this.title, required this.press});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(text: title),
          const Spacer(),
          ElevatedButton(
            onPressed: () {
              press;
            },
            style: ElevatedButton.styleFrom(
              // backgroundColor: Colors.pink,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // <-- Radius
              ),
            ),
            child: const Text(
              "Buy Now",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
