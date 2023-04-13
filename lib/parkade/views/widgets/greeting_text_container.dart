//
//  greeting_text_container
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';

class GreetingTextContainer extends StatelessWidget {
  const GreetingTextContainer({
    super.key,
  });

  String get _greeting {
    final hour = DateTime.now().hour;
    if (hour < 12) {
      return 'Good Morning';
    } else if (hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Harare, ZWE 📍',
                  style: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w500,
                    fontSize: sy(8),
                  ),
                ),
                SizedBox(
                  height: sy(5),
                ),
                Text(
                  '$_greeting, Ngoni!',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: sy(10),
                  ),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: sy(30),
                  width: sy(30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/me.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: -sy(2),
                  left: -sy(3),
                  child: Container(
                    height: sy(8),
                    width: sy(8),
                    decoration: BoxDecoration(
                      color: ParkadeColors.green,
                      border: Border.all(
                        color: ParkadeColors.caramel,
                        width: 3,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
