import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:async';
import 'package:meta/meta.dart';

import '../kriptor.dart';

part 'criptor_event.dart';
part 'criptor_state.dart';

class CriptorBloc extends Bloc<CriptorEvent, CriptorState> {
  CriptorBloc() : super(CriptorMainState());

  @override
  Stream<CriptorState> mapEventToState(
    CriptorEvent event,
  ) async* {
    yield LoadingState();
    await Future.delayed(Duration(seconds: 2));
    if (event is CriptIt) {
      await criptor(event.string, event.key, true);
    }
    if (event is DecrtiptIT) {
      await criptor(event.string, event.key, false);
    }
    yield CloseLoadingState();
    yield PopUpState();
  }
}
