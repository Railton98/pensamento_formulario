import 'package:bloc/bloc.dart';

enum StatusEvent { increment, decrement }

class StatusBloc extends Bloc<StatusEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(StatusEvent event) async* {
    switch (event) {
      case StatusEvent.decrement:
        yield state - 1;
        break;
      case StatusEvent.increment:
        yield state + 1;
        break;
    }
  }
}
