//
//  parkade_details_section
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
import 'floors_selection_section.dart';

class ParkadeDetailsSection extends StatelessWidget {
  const ParkadeDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Container(
          width: context.width,
          color: ParkadeColors.caramel,
          child: Column(
            children: [
              SizedBox(
                height: sy(40),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: sx(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        context.goBack();
                      },
                      child: Container(
                        height: sy(30),
                        width: sy(30),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ParkadeColors.caramelWhite,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Icon(
                          CupertinoIcons.chevron_back,
                          color: ParkadeColors.navyBlue,
                          size: sy(18),
                        ),
                      ),
                    ),
                    Text(
                      'Choose Slot',
                      style: TextStyle(
                        color: Colors.black38,
                        fontWeight: FontWeight.w500,
                        fontSize: sy(10),
                      ),
                    ),
                    Container(
                      height: sy(30),
                      width: sy(30),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: ParkadeColors.caramelWhite,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Icon(
                        Icons.grid_view_rounded,
                        color: ParkadeColors.navyBlue,
                        size: sy(18),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: sy(20),
              ),
              Text(
                'Rezende Parkade',
                style: TextStyle(
                  color: ParkadeColors.navyBlue,
                  fontWeight: FontWeight.w700,
                  fontSize: sy(10),
                ),
              ),
              SizedBox(
                height: sy(5),
              ),
              Text(
                'Harare, ZWE',
                style: TextStyle(
                  color: ParkadeColors.navyBlue,
                  fontWeight: FontWeight.w400,
                  fontSize: sy(10),
                ),
              ),
              SizedBox(
                height: sy(20),
              ),
              const FloorsSelectionSection(),
            ],
          ),
        );
      },
    );
  }
}
