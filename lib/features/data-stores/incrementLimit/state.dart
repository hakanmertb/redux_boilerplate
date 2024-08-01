class IncrementLimitState {
  final int incrementLimit;

  IncrementLimitState({
    required this.incrementLimit,
  });

  factory IncrementLimitState.initial() =>
      IncrementLimitState(incrementLimit: 10);

  IncrementLimitState copyWith({int? incrementLimit}) {
    return IncrementLimitState(
      incrementLimit: incrementLimit ?? this.incrementLimit,
    );
  }
}
