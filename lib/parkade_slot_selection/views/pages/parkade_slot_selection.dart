//
//  parkade_slot_selection
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:handy_extensions/handy_extensions.dart';
import 'package:relative_scale/relative_scale.dart';

import '../../blocs/slot_selection/slot_selection_bloc.dart';
import '../widgets/floating_action.dart';
import '../widgets/parkade_details_section.dart';
import '../widgets/slots_view.dart';

class ParkadeSlotSelectionPage extends StatelessWidget {
  const ParkadeSlotSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return RelativeBuilder(
      builder: (context, height, width, sy, sx) {
        return Scaffold(
          body: SizedBox(
            height: context.height,
            width: context.width,
            child: Column(
              children: [
                const ParkadeDetailsSection(),
                Expanded(
                  child: SlotsView(
                    slots: context.read<SlotSelectionBloc>().slots,
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton:
              BlocBuilder<SlotSelectionBloc, SlotSelectionState>(
            builder: (context, state) {
              if (state is SlotSelected) {
                return const FloatingAction();
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }
}
