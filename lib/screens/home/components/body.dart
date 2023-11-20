import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_card_list.dart';
import 'package:plant_app/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app/screens/home/components/plant_card_list.dart';
import 'package:plant_app/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchbox(size: size),
          TitleWithMoreButton(title: 'Recommended', press: () {}),
          const PlantCardList(),
          TitleWithMoreButton(title: 'Featured Plants', press: () {}),
          const FeaturedCardList(),
          const SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
