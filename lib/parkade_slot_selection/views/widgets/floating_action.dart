//
//  floating_action
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';
import '../../blocs/slot_selection/slot_selection_bloc.dart';

class FloatingAction extends StatelessWidget {
  const FloatingAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return SizedBox(
          width: sx(300),
          child: FloatingActionButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            backgroundColor: ParkadeColors.yellow,
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: sx(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Choose Slot',
                    style: TextStyle(
                      color: ParkadeColors.navyBlue,
                      fontWeight: FontWeight.w600,
                      fontSize: sy(10),
                    ),
                  ),
                  BlocBuilder<SlotSelectionBloc, SlotSelectionState>(
                    builder: (context, state) {
                      if (state is SlotSelected) {
                        return Text(
                          state.slot,
                          style: TextStyle(
                            color: ParkadeColors.navyBlue,
                            fontWeight: FontWeight.w500,
                            fontSize: sy(9),
                          ),
                        );
                      } else {
                        return const SizedBox.shrink();
                      }
                    },
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
