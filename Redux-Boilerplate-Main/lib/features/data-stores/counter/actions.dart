class IncrementAction {}

class DecrementAction {}

class IncrementByAmountAction {
  final int amount;
  IncrementByAmountAction({required this.amount});
}

class DecrementByAmountAction {
  final int amount;
  DecrementByAmountAction({required this.amount});
}

class IncrementDeniedAction {}

class DecrementDeniedAction {}
