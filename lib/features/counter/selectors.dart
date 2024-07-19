import 'package:redux_boilerplate/features/counter/state.dart';

int currentCounterValueSelector(CounterState state) => state.value;
