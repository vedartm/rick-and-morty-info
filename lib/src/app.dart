import 'package:flutter/material.dart';
import 'package:rick_and_morty_info/src/home/home_page.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ValueNotifier<Client> client = ValueNotifier<Client>(
      Client(
        endPoint: 'https://rickandmortyapi.com/graphql',
        cache: InMemoryCache(),
      ),
    );

    return GraphqlProvider(
      client: client,
      child: CacheProvider(
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Randm',
            brightness: Brightness.dark,
          ),
          home: MyHomePage(),
        ),
      ),
    );
  }
}
