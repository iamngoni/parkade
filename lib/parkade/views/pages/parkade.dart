//
//  parkade
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';

import 'parkade_nav_scaffold.dart';

class ParkadeApp extends StatelessWidget {
  const ParkadeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parkade',
      theme: ThemeData(
        fontFamily: 'PublicSans',
      ),
      home: const ParkadeNavScaffold(),
    );
  }
}
