//
//  floors_selection_section
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';

class FloorsSelectionSection extends StatelessWidget {
  const FloorsSelectionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return BackdropFilter(
          filter: ImageFilter.blur(),
          child: Container(
            color: Colors.black.withOpacity(0.2),
            padding: EdgeInsets.symmetric(
              horizontal: sx(20),
              vertical: sy(5),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: sx(20),
                        vertical: sy(8),
                      ),
                      decoration: BoxDecoration(
                        color: ParkadeColors.caramelWhite,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Text(
                        '1st Floor',
                        style: TextStyle(
                          color: ParkadeColors.navyBlue,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: sx(10),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: sx(20),
                        vertical: sy(8),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 1,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Text(
                        '2nd Floor',
                        style: TextStyle(
                          color: ParkadeColors.navyBlue,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(10),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  '7 Vacant Slots',
                  style: TextStyle(
                    color: ParkadeColors.navyBlue,
                    fontWeight: FontWeight.w400,
                    fontSize: sy(10),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
