//
//  parking_ticket_details_section
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';

class ParkingTicketDetailsSection extends StatelessWidget {
  const ParkingTicketDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          padding: EdgeInsets.only(
            bottom: sy(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Duration',
                    style: TextStyle(
                      color: ParkadeColors.navyBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: sy(9),
                    ),
                  ),
                  SizedBox(
                    height: sy(10),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '9hrs',
                        style: TextStyle(
                          color: ParkadeColors.navyBlue,
                          fontWeight: FontWeight.w700,
                          fontSize: sy(12),
                        ),
                      ),
                      Text(
                        ' / 31days',
                        style: TextStyle(
                          color: ParkadeColors.lightBlack,
                          fontWeight: FontWeight.w500,
                          fontSize: sy(10),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Balance Paid',
                    style: TextStyle(
                      color: ParkadeColors.navyBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: sy(9),
                    ),
                  ),
                  SizedBox(
                    height: sy(10),
                  ),
                  Text(
                    r'$558 USD',
                    style: TextStyle(
                      color: ParkadeColors.navyBlue,
                      fontWeight: FontWeight.w700,
                      fontSize: sy(12),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
