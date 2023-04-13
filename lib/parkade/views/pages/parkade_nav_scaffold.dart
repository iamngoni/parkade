//
//  parkade_nav_scaffold
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';
import 'parkade_bookings.dart';
import 'parkade_home.dart';
import 'parkade_map.dart';
import 'parkade_settings.dart';

class ParkadeNavScaffold extends StatefulWidget {
  const ParkadeNavScaffold({super.key});

  @override
  State<ParkadeNavScaffold> createState() => _ParkadeNavScaffoldState();
}

class _ParkadeNavScaffoldState extends State<ParkadeNavScaffold> {
  int _index = 0;

  final List<Map<String, dynamic>> _pages = [
    {
      'title': 'Home',
      'icon': 'assets/icons/home.png',
      'type': String,
    },
    {
      'title': 'Map',
      'icon': CupertinoIcons.map_fill,
      'type': IconData,
    },
    {
      'title': 'Bookings',
      'icon': 'assets/icons/calendar.png',
      'type': String,
    },
    {
      'title': 'Settings',
      'icon': 'assets/icons/settings.png',
      'type': String,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          body: SizedBox(
            height: height,
            width: width,
            child: PageView(
              children: const [
                ParkadeHome(),
                ParkadeMap(),
                ParkadeBookings(),
                ParkadeSettings(),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            elevation: 0,
            color: ParkadeColors.navyBlue,
            child: Container(
              margin: EdgeInsets.only(
                bottom: sy(10),
                left: sx(55),
                right: sx(55),
              ),
              height: sy(32),
              width: context.width,
              decoration: BoxDecoration(
                color: ParkadeColors.lightBlack,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: _pages
                    .map(
                      (e) => _pages.indexOf(e) == _index
                          ? GestureDetector(
                              onTap: () => setState(() {
                                _index = _pages.indexOf(e);
                              }),
                              child: Container(
                                height: context.height,
                                padding: EdgeInsets.symmetric(
                                  horizontal: sx(20),
                                ),
                                decoration: BoxDecoration(
                                  color: ParkadeColors.yellow,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  children: [
                                    if (e['type'] == String)
                                      ImageIcon(
                                        AssetImage(e['icon'] as String),
                                        size: sy(17),
                                        color: ParkadeColors.navyBlue,
                                      )
                                    else
                                      Icon(
                                        e['icon'] as IconData,
                                        size: sy(17),
                                        color: ParkadeColors.navyBlue,
                                      ),
                                    SizedBox(
                                      width: sx(10),
                                    ),
                                    Text(
                                      e['title'] as String,
                                      style: TextStyle(
                                        color: ParkadeColors.navyBlue,
                                        fontWeight: FontWeight.w600,
                                        fontSize: sy(9),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Expanded(
                              child: GestureDetector(
                                onTap: () => setState(() {
                                  _index = _pages.indexOf(e);
                                }),
                                child: e['type'] == String
                                    ? ImageIcon(
                                        AssetImage(e['icon'] as String),
                                        size: sy(17),
                                        color: Colors.white,
                                      )
                                    : Icon(
                                        e['icon'] as IconData,
                                        size: sy(17),
                                        color: Colors.white,
                                      ),
                              ),
                            ),
                    )
                    .toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
