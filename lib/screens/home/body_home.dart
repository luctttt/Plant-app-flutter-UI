import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/feature_plant_card.dart';
import 'package:plant_app/screens/home/components/recomend_plants.dart';
import 'package:plant_app/screens/home/components/title_with_more_btn.dart';
import 'components/head_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // it will provide us total height and with of our screen
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HeaderWithSearchBox(size),
          TitleWithMoreBtn(
            title: 'Recomended',
            press: () {},
          ),
          RecomendPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
          FeaturePlants(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}

class FeaturePlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlantCard(
              image: 'assets/images/bottom_img_1.png', press: () {}),
          FeaturePlantCard(
              image: 'assets/images/bottom_img_2.png', press: () {}),
          FeaturePlantCard(
              image: 'assets/images/bottom_img_3.png', press: () {}),
        ],
      ),
    );
  }
}
