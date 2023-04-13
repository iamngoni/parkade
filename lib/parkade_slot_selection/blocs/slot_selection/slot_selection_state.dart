part of 'slot_selection_bloc.dart';

abstract class SlotSelectionState extends Equatable {
  const SlotSelectionState();
}

class SlotSelectionInitial extends SlotSelectionState {
  const SlotSelectionInitial();

  @override
  List<Object> get props => [];
}

class SlotSelected extends SlotSelectionState {
  const SlotSelected(this.slot);
  final String slot;

  @override
  List<Object> get props => [slot];
}
