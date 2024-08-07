import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:njktest2/features/data-stores/appDataStore/state.dart';
import 'package:one_context/one_context.dart';

import 'features/data-stores/appDataStore/actions.dart';
import 'features/data-stores/bookDataStore/state.dart';

class TempView extends StatefulWidget {
  const TempView({super.key});

  @override
  State<TempView> createState() => _TempViewState();
}

class _TempViewState extends State<TempView> {
  @override
  void initState() {
    StoreProvider.of<AppDataStoreState>(OneContext().context!)
        .dispatch(InitApp());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: StoreConnector<AppDataStoreState, BookState>(
        converter: (store) => store.state.bookState,
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state.books == null || state.books!.isEmpty) {
            return const Center(
              child: Text("No Books"),
            );
          } else {
            return ListView.builder(itemBuilder: (context, index) {
              return const ListTile(
                title: Text("Book"),
              );
            });
          }
        },
      )),
    );
  }
}
