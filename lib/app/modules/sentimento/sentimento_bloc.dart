import 'package:bloc/bloc.dart';

enum SentimentoEvent { increment, decrement }

class SentimentoBloc extends Bloc<SentimentoEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(SentimentoEvent event) async* {
    switch (event) {
      case SentimentoEvent.decrement:
        yield state - 1;
        break;
      case SentimentoEvent.increment:
        yield state + 1;
        break;
    }
  }
}
