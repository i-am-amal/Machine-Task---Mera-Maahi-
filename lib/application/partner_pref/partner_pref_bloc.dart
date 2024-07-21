

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'partner_pref_event.dart';
part 'partner_pref_state.dart';

class PartnerPrefBloc extends Bloc<PartnerPrefEvent, PartnerPrefState> {
  PartnerPrefBloc() : super(PartnerPrefInitial()) {
    on<PartnerPrefEvent>((event, emit) {
    });

    on<PartnerMoreButtonEvent>((event, emit) {
      if (event.more) {
        emit(PartnerPrefMoreButtonState(more: false));
      } else {
        emit(PartnerPrefMoreButtonState(more: true));
      }
    });
  }
}
