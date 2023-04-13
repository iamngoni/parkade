//
//  providers
//  parkade
//
//  Created by Ngonidzashe Mangudya on 14/4/2023.
//  Copyright (c) 2023 ModestNerds, Co
//

import 'package:flutter_bloc/flutter_bloc.dart';

import 'parkade_slot_selection/blocs/slot_selection/slot_selection_bloc.dart';

List<BlocProvider> providers = [
  BlocProvider<SlotSelectionBloc>(create: (_) => SlotSelectionBloc()),
];
