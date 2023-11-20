import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/bottom_buttons.dart';
import 'package:plant_app/screens/details/components/image_and_icon.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageandIcon(size: size),
          const TitleAndPrice(title: 'samantha', country: 'russia', price: 440),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          const BottomButtons(),
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
        ],
      ),
    );
  }
}
