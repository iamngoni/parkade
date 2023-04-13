//
//  parkade_home
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';
import '../widgets/greeting_text_container.dart';
import '../widgets/parking_ticket.dart';
import '../widgets/parking_ticket_barcode.dart';
import '../widgets/search_text_field.dart';
import '../widgets/services_section.dart';

class ParkadeHome extends StatelessWidget {
  const ParkadeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          height: context.height,
          width: context.width,
          padding: EdgeInsets.symmetric(
            horizontal: sx(20),
          ),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ParkadeColors.caramel,
                ParkadeColors.navyBlue,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.7,
                0.3,
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: sy(10),
                ),
                const GreetingTextContainer(),
                SizedBox(
                  height: sy(15),
                ),
                const SearchTextField(),
                SizedBox(
                  height: sy(15),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'SERVICES',
                      style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.w700,
                        fontSize: sy(9),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                            fontSize: sy(9),
                          ),
                        ),
                        SizedBox(
                          width: sx(10),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: sy(10),
                          color: Colors.black54,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: sy(10),
                ),
                const ServicesSection(),
                SizedBox(
                  height: sy(20),
                ),
                const ParkingTicket(),
                const ParkingTicketBarcode(),
              ],
            ),
          ),
        );
      },
    );
  }
}
