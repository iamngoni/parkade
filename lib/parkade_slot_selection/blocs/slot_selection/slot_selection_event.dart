part of 'slot_selection_bloc.dart';

abstract class SlotSelectionEvent extends Equatable {
  const SlotSelectionEvent();
}

class SelectSlot extends SlotSelectionEvent {
  const SelectSlot(this.slot);
  final String slot;

  @override
  List<Object> get props => [slot];
}

class UnSelectSlot extends SlotSelectionEvent {
  const UnSelectSlot();

  @override
  List<Object> get props => [];
}
