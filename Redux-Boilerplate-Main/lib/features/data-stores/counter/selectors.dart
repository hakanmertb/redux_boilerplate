import 'package:redux_boilerplate/features/data-stores/counter/state.dart';

int currentCounterValueSelector(CounterState state) => state.value;
