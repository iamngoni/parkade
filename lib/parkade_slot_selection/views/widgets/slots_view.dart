//
//  slots_view
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:parkade/parkade_slot_selection/views/widgets/upper_slot_section.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';
import '../../models/data/slot_array.dart';
import 'lower_slot_position.dart';

class SlotsView extends StatelessWidget {
  const SlotsView({
    required this.slots,
    super.key,
  });

  final List<SlotArray> slots;

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
          decoration: const BoxDecoration(color: ParkadeColors.navyBlue),
          child: ListView.builder(
            itemCount: slots.length,
            itemBuilder: (context, index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (slots[index].upper)
                    Row(
                      children: [
                        UpperSlotPosition(
                          isNotEmpty: slots[index].upperSection!.slot1,
                          symbol: slots[index].slotSymbol,
                          position: '01',
                        ),
                        UpperSlotPosition(
                          isNotEmpty: slots[index].upperSection!.slot2,
                          symbol: slots[index].slotSymbol,
                          position: '02',
                        ),
                        UpperSlotPosition(
                          isNotEmpty: slots[index].upperSection!.slot3,
                          symbol: slots[index].slotSymbol,
                          position: '03',
                        ),
                        UpperSlotPosition(
                          isNotEmpty: slots[index].upperSection!.slot4,
                          symbol: slots[index].slotSymbol,
                          position: '04',
                        ),
                      ],
                    )
                  else
                    const SizedBox.shrink(),
                  if (slots[index].lower)
                    Row(
                      children: [
                        LowerSlotPosition(
                          isNotEmpty: slots[index].lowerSection!.slot1,
                          symbol: slots[index].slotSymbol,
                          position: '01',
                        ),
                        LowerSlotPosition(
                          isNotEmpty: slots[index].lowerSection!.slot2,
                          symbol: slots[index].slotSymbol,
                          position: '02',
                        ),
                        LowerSlotPosition(
                          isNotEmpty: slots[index].lowerSection!.slot3,
                          symbol: slots[index].slotSymbol,
                          position: '03',
                        ),
                        LowerSlotPosition(
                          isNotEmpty: slots[index].lowerSection!.slot4,
                          symbol: slots[index].slotSymbol,
                          position: '04',
                        ),
                      ],
                    )
                  else
                    const SizedBox.shrink(),
                  SizedBox(
                    height: sy(20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        slots[index].title,
                        style: TextStyle(
                          color: Colors.white70,
                          fontWeight: FontWeight.w400,
                          fontSize: sy(10),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            'In / Out',
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w400,
                              fontSize: sy(10),
                            ),
                          ),
                          SizedBox(
                            width: sx(10),
                          ),
                          Icon(
                            CupertinoIcons.arrow_left_right,
                            color: Colors.white70,
                            size: sy(12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sy(20),
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
