import 'package:flutter/material.dart';

import 'package:magnit_test_app/presentation/pages/pages.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Тестовое задание',
      home: ShopListPage(),
    );
  }
}
