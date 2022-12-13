import 'package:flutter/material.dart';

import 'package:designs/widget/widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          _HomeBody(),
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigator(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          PageTitle(),
          CardTable(),
        ],
      ),
    );
  }
}
