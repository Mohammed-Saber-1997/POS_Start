import 'package:flutter/material.dart';
import 'package:pos_start/presentation/home/left_part.dart';
import 'package:pos_start/presentation/home/main_part.dart';
import 'package:pos_start/presentation/home/top_part.dart';
import 'package:pos_start/presentation/home/bottom_part.dart';
import 'package:pos_start/presentation/widgets/shared_widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          leftPart(),
          myVerticalDevider(),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                topPart(),
                mainPart(),
                myHorizontalDevider(),
                buttomPart(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
