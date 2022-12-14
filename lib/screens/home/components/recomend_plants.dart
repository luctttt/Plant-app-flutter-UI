import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/screens/detail/detail_screen.dart';
import 'package:plant_app/screens/home/components/recomend_plant_cart.dart';

class RecomendPlants extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendPlantCart(
              image: 'assets/images/image_1.png',
              title: 'Samantha',
              country: 'Russi',
              price: 440,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailSreen(),
                  ),
                );
              }),
          RecomendPlantCart(
              image: 'assets/images/image_2.png',
              title: 'Alica ',
              country: 'Russi',
              price: 440,
              press: () {
                print('Click navigation ');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailSreen(),
                  ),
                );
              }),
          RecomendPlantCart(
              image: 'assets/images/image_3.png',
              title: 'Samantha',
              country: 'Russi',
              price: 440,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailSreen(),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
