import 'package:flutter/material.dart';
import 'package:magnit_test_app/internal/utils/bootstrap.dart';

import 'presentation/pages/shop_list_page.dart';

void main() {
  Bootstrap.init(() => const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ShopListPage(),
    );
  }
}
