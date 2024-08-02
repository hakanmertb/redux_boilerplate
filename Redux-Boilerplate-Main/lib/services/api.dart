Future<int> fetchIncrementAmount() async {
  await Future.delayed(const Duration(seconds: 1));
  return Future.value(1);
}

Future<int> fetchDecrementAmount() async {
  await Future.delayed(const Duration(seconds: 1));
  return Future.value(1);
}
