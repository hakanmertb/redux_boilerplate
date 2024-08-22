import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:njktest2/app/features/data-stores/appDataStore/actions.dart';
import 'package:njktest2/app/features/data-stores/appDataStore/state.dart';
import 'package:njktest2/app/features/data-stores/bookDataStore/actions.dart';
import 'package:one_context/one_context.dart';
import '../../data-stores/bookDataStore/state.dart';

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
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Text(
                  "${state.books.toString() == "[]" ? "[ ]" : "${state.books}"}\nNo Books",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(
                  height: 200,
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: MaterialButton(
                    color: Colors.amber,
                    onPressed: () {
                      StoreProvider.of<AppDataStoreState>(context)
                          .dispatch(GetBooks());
                    },
                    child: const Text("Get Books",
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                  ),
                ),
                const SizedBox(
                  height: 9,
                ),
                SizedBox(
                  width: 150,
                  height: 60,
                  child: MaterialButton(
                    color: const Color.fromARGB(255, 191, 62, 6),
                    onPressed: () {
                      StoreProvider.of<AppDataStoreState>(context)
                          .dispatch(GetBookById({"id": "1"}));
                    },
                    child: const Text("Get Book By Id\n{'id':'1'}",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 17)),
                  ),
                )
              ],
            );
          } else {
            return ListView.builder(itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.books![index].id),
              );
            });
          }
        },
      )),
    );
  }
}
