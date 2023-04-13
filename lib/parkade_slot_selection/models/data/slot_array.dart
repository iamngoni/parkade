//
//  slot_array
//  parkade
//
//  Created by Ngonidzashe Mangudya on 13/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:equatable/equatable.dart';

import 'slot_section.dart';

class SlotArray extends Equatable {
  const SlotArray({
    required this.title,
    required this.slotSymbol,
    this.upper = true,
    this.lower = true,
    this.upperSection,
    this.lowerSection,
  }) : assert(
          (upper == true && upperSection != null) ||
              (lower == true && lowerSection != null),
          'If section is available add it',
        );

  final String title;
  final String slotSymbol;
  final bool upper;
  final bool lower;
  final SlotSection? upperSection;
  final SlotSection? lowerSection;

  @override
  List<Object?> get props => [title, lower, upper, upperSection, lowerSection];
}
