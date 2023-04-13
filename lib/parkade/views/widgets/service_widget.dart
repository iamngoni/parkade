//
//  service_widget
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    required this.text,
    required this.icon,
    this.onTap,
    super.key,
  });

  final String text;
  final IconData icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Expanded(
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              height: sy(90),
              padding: EdgeInsets.symmetric(
                horizontal: sx(20),
                vertical: sy(10),
              ),
              decoration: BoxDecoration(
                color: ParkadeColors.caramelWhite,
                borderRadius: BorderRadius.circular(13),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    icon,
                    size: sy(17),
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      color: ParkadeColors.navyBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: sy(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
