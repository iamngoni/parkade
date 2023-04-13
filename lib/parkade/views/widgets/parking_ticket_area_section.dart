//
//  parking_ticket_area_section
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';

class ParkingTicketAreaSection extends StatelessWidget {
  const ParkingTicketAreaSection({
    super.key,
  });

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
                  'Rezende Parkade',
                  style: TextStyle(
                    color: ParkadeColors.navyBlue,
                    fontWeight: FontWeight.w700,
                    fontSize: sy(14),
                  ),
                ),
                SizedBox(
                  height: sy(5),
                ),
                Text(
                  'Julius Nyerere Way, HRE',
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: sy(10),
                  ),
                ),
              ],
            ),
            Container(
              height: sy(30),
              width: sy(30),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black26,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                Icons.screen_search_desktop_outlined,
                size: sy(20),
                color: ParkadeColors.navyBlue,
              ),
            ),
          ],
        );
      },
    );
  }
}
