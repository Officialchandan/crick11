
import 'package:crick11/ui_bloc/event.dart';
import 'package:crick11/ui_bloc/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CheckIndexingBloc extends Bloc<IndexingCheckEvent,IndexingState> {
  CheckIndexingBloc() : super(InitialState()) {
    int index;

    on<IndexingCheckEvent>((event, emit) => emit(IndexingCheckState()));
     

  }




}
