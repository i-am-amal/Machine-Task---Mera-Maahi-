
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(const BottomNavState(emittedIndex: 0)) {
    on<BottomnavcallEvent>((event, emit) {
      int index = event.currentIndex;
      emit(BottomNavState(emittedIndex: index));
    });
  }
}
