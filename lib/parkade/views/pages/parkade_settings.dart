//
//  parkade_settings
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';

import '../../../core/colors.dart';

class ParkadeSettings extends StatelessWidget {
  const ParkadeSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ParkadeColors.navyBlue,
      child: const Center(
        child: Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
