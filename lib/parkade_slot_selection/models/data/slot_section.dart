//
//  slot_section
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:equatable/equatable.dart';

class SlotSection extends Equatable {
  const SlotSection({
    this.slot1 = false,
    this.slot2 = false,
    this.slot3 = false,
    this.slot4 = false,
  });

  final bool slot1;
  final bool slot2;
  final bool slot3;
  final bool slot4;

  @override
  List<Object?> get props => [slot1, slot2, slot3, slot4];
}
