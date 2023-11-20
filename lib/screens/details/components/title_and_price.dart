import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleAndPrice extends StatelessWidget {
  const TitleAndPrice({
    super.key,
    required this.title,
    required this.country,
    required this.price,
  });

  final String title, country;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '$title\n'.toUpperCase(),
                  style: Theme.of(context)
                      .textTheme
                      .headlineLarge!
                      .copyWith(fontWeight: FontWeight.bold, fontSize: 36),
                ),
                TextSpan(
                  text: country.toUpperCase(),
                  style: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            'Rs. $price',
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(color: kPrimaryColor, fontSize: 24),
          )
        ],
      ),
    );
  }
}
