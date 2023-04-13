//
//  upper_slot_section
//  parkade
//
//  Created by Ngonidzashe Mangudya on 14/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../../core/colors.dart';
import '../../blocs/slot_selection/slot_selection_bloc.dart';

class UpperSlotPosition extends StatelessWidget {
  const UpperSlotPosition({
    required this.isNotEmpty,
    required this.symbol,
    required this.position,
    super.key,
  });

  final bool isNotEmpty;
  final String symbol;
  final String position;

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Expanded(
          child: BlocBuilder<SlotSelectionBloc, SlotSelectionState>(
            builder: (context, state) {
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  GestureDetector(
                    onTap: () {
                      if (isNotEmpty == false) {
                        if (context.read<SlotSelectionBloc>().state
                            is SlotSelected) {
                          if ((context.read<SlotSelectionBloc>().state
                                      as SlotSelected)
                                  .slot ==
                              '$symbol-U$position') {
                            context
                                .read<SlotSelectionBloc>()
                                .add(const UnSelectSlot());
                          } else {
                            context
                                .read<SlotSelectionBloc>()
                                .add(SelectSlot('$symbol-U$position'));
                          }
                        } else {
                          context
                              .read<SlotSelectionBloc>()
                              .add(SelectSlot('$symbol-U$position'));
                        }
                      }
                    },
                    child: Container(
                      height: sy(60),
                      decoration: BoxDecoration(
                        border: const Border(
                          bottom: BorderSide(
                            color: Colors.white70,
                          ),
                          left: BorderSide(
                            color: Colors.white70,
                          ),
                          right: BorderSide(
                            color: Colors.white70,
                          ),
                        ),
                        gradient: state is SlotSelected
                            ? state.slot == '$symbol-U$position'
                                ? const LinearGradient(
                                    colors: [
                                      ParkadeColors.green,
                                      ParkadeColors.navyBlue,
                                    ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter,
                                  )
                                : null
                            : null,
                      ),
                      child: Center(
                        child: isNotEmpty
                            ? RotatedBox(
                                quarterTurns: 2,
                                child: Image(
                                  image:
                                      const AssetImage('assets/images/car.png'),
                                  height: sy(40),
                                  fit: BoxFit.scaleDown,
                                ),
                              )
                            : Text(
                                '$symbol-$position',
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontWeight: FontWeight.w400,
                                  fontSize: sy(10),
                                ),
                              ),
                      ),
                    ),
                  ),
                  if (state is SlotSelected)
                    state.slot == '$symbol-U$position'
                        ? AnimatedPositioned(
                            duration: const Duration(milliseconds: 200),
                            bottom: -sy(7),
                            left: 0,
                            right: 0,
                            child: Container(
                              height: sy(15),
                              width: sy(15),
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.check,
                                color: ParkadeColors.navyBlue,
                                size: sy(10),
                              ),
                            ),
                          )
                        : const SizedBox.shrink()
                  else
                    const SizedBox.shrink(),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
