import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class BottomButtons extends StatelessWidget {
  const BottomButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: ElevatedButton(
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(kPrimaryColor),
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Buy Now',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Description',
              style: TextStyle(color: kPrimaryColor, fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }
}
