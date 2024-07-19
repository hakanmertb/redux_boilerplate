class DecrementLimitState {
  final int decrementLimit;

  DecrementLimitState({
    required this.decrementLimit,
  });

  factory DecrementLimitState.initial() =>
      DecrementLimitState(decrementLimit: -10);

  DecrementLimitState copyWith({int? decrementLimit}) {
    return DecrementLimitState(
      decrementLimit: decrementLimit ?? this.decrementLimit,
    );
  }
}
