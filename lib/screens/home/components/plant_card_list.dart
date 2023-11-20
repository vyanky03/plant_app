import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/details_screen.dart';

class PlantCardList extends StatelessWidget {
  const PlantCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PlantCard(
            title: 'Samantha',
            image: 'assets/images/image_1.png',
            country: 'russia',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailedScreen(),
                ),
              );
            },
            price: 440,
          ),
          PlantCard(
            title: 'Angelica',
            image: 'assets/images/image_2.png',
            country: 'russia',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailedScreen(),
                ),
              );
            },
            price: 440,
          ),
          PlantCard(
            title: 'Samantha',
            image: 'assets/images/image_3.png',
            country: 'russia',
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailedScreen(),
                ),
              );
            },
            price: 440,
          ),
        ],
      ),
    );
  }
}

class PlantCard extends StatelessWidget {
  const PlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.press,
  });

  final String image, title, country;
  final int price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding * 2,
          bottom: kDefaultPadding * 2.5),
      width: size.width * 0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Image.asset(image),
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: '$title\n'.toUpperCase(),
                            style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'Rs. $price',
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall
                        ?.copyWith(color: kPrimaryColor),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
