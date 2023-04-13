//
//  services_section
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:relative_scale/relative_scale.dart';

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
            const ServiceWidget(
              text: 'Find a\nparking',
              icon: Icons.local_parking_sharp,
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
