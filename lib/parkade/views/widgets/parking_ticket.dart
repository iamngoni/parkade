//
//  parking_ticket
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import 'clip_shadow.dart';
import 'parking_ticket_area_section.dart';
import 'parking_ticket_details_section.dart';
import 'ticker_clipper.dart';

class ParkingTicket extends StatelessWidget {
  const ParkingTicket({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return ClipShadow(
          clipper: TicketClipper(
            const BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
            ),
            BorderRadius.zero,
          ),
          boxShadow: const [],
          child: Container(
            width: context.width,
            padding: EdgeInsets.symmetric(
              horizontal: sx(20),
              vertical: sy(10),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
              ),
            ),
            child: Column(
              children: [
                const ParkingTicketAreaSection(),
                Divider(
                  color: Colors.black26,
                  height: sy(20),
                ),
                const ParkingTicketDetailsSection(),
              ],
            ),
          ),
        );
      },
    );
  }
}
