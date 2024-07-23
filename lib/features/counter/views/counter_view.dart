import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:one_context/one_context.dart';
import 'package:redux_boilerplate/components/button/rapider_button.dart';
import '../../../core/appstore/app_state.dart';
import '../../../core/rootstore/root_state.dart';
import '../actions.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  void initState() {
    StoreProvider.of<RootState>(OneContext().context!).dispatch(InitAction());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter')),
      body: Center(
        child: StoreConnector<AppState, int>(
          converter: (store) => store.state.counterState.value,
          builder: (context, counter) {
            return Text(
              'Counter: $counter',
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: "1",
            onPressed: () {
              log("Increment button pressed"); // Log eklendi
              StoreProvider.of<AppState>(context).dispatch(IncrementAction());
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          RapiderButton(
            customSizeSettings: SizeConfig(width: 250, height: 300),
            customColorSettings: ColorConfig(color: Colors.amberAccent),
            onPressed: () {
              log("Rapider Button On Pressed");
            },
            text: "Rapider",
          ),
          FloatingActionButton(
            heroTag: "2",
            onPressed: () {
              log("Decrement button pressed"); // Log eklendi
              StoreProvider.of<AppState>(context).dispatch(DecrementAction());
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
