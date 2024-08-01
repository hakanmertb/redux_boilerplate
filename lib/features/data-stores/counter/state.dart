class CounterState {
  final int value;

  CounterState({required this.value});

  factory CounterState.initial() => CounterState(value: 0);

  CounterState copyWith({int? value}) {
    return CounterState(value: value ?? this.value);
  }
}
