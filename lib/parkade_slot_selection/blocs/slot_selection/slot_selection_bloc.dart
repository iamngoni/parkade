import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/data/slot_array.dart';
import '../../models/data/slot_section.dart';

part 'slot_selection_event.dart';
part 'slot_selection_state.dart';

class SlotSelectionBloc extends Bloc<SlotSelectionEvent, SlotSelectionState> {
  SlotSelectionBloc() : super(const SlotSelectionInitial()) {
    on<UnSelectSlot>((event, emit) {
      emit(const SlotSelectionInitial());
    });
    on<SelectSlot>((event, emit) {
      emit(SlotSelected(event.slot));
    });
  }

  final List<SlotArray> slots = [
    const SlotArray(
      title: 'Section A',
      slotSymbol: 'A',
      upper: false,
      lowerSection: SlotSection(slot1: true, slot2: true),
    ),
    const SlotArray(
      title: 'Section B',
      slotSymbol: 'B',
      upperSection: SlotSection(
        slot2: true,
        slot4: true,
      ),
      lowerSection: SlotSection(slot1: true, slot3: true),
    ),
    const SlotArray(
      title: 'Section C',
      slotSymbol: 'C',
      upperSection: SlotSection(
        slot1: true,
        slot4: true,
      ),
      lowerSection: SlotSection(slot3: true, slot4: true),
    ),
  ];
}
