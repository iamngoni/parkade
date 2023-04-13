//
//  services_section
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../parkade_slot_selection/views/pages/parkade_slot_selection.dart';
import 'service_widget.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Row(
          children: [
            ServiceWidget(
              text: 'Find a\nparking',
              icon: Icons.local_parking_sharp,
              onTap: () {
                context.goTo(
                  page: const ParkadeSlotSelectionPage(),
                );
              },
            ),
            SizedBox(
              width: sx(15),
            ),
            const ServiceWidget(
              text: 'Place\nlocation',
              icon: CupertinoIcons.location_circle,
            ),
            SizedBox(
              width: sx(15),
            ),
            const ServiceWidget(
              text: 'Car\nSecurity',
              icon: CupertinoIcons.checkmark_shield,
            ),
          ],
        );
      },
    );
  }
}
