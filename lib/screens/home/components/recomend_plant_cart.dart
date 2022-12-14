import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecomendPlantCart extends StatelessWidget {
  final String image, title, country;
  final int price;
  final Function press;

  const RecomendPlantCart(
      {required this.image,
      required this.title,
      required this.country,
      required this.price,
      required this.press});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      // width: size.width * 0.3,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              press();
            },
            child: Container(
              // color: Colors.lightBlueAccent,
              width: size.width * 0.3, height: size.height * 0.25,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(image),
                  fit: BoxFit.fill,
                ),
              ),
              // child: Image.asset('assets/images/image_1.png')
            ),
          ),
          GestureDetector(
            onTap: () {
              press();
            },
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              width: size.width * 0.3,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ],
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10))),
              child: Row(
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "${title.toUpperCase()}\n",
                        style: Theme.of(context).textTheme.button),
                    TextSpan(
                        text: country.toUpperCase(),
                        style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                  ])),
                  const Spacer(),
                  Text(
                    '\$${price}',
                    style: Theme.of(context)
                        .textTheme
                        .button
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
