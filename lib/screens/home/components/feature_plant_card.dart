import 'package:flutter/cupertino.dart';

import '../../../constants.dart';

class FeaturePlantCard extends StatelessWidget {
  final String image;

  final Function press;

  FeaturePlantCard({required this.image, required this.press});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        press;
      },
      child: Container(
        margin: const EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
