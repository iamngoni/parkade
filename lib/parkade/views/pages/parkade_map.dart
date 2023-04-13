//
//  parkade_map
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class ParkadeMap extends StatelessWidget {
  const ParkadeMap({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ParkadeColors.navyBlue,
      child: const Center(
        child: Text(
          'Map',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
