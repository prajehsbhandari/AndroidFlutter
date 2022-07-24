import 'package:flutter/material.dart';
import 'package:good_benefit/screens/category_screen/category_items.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/map');
                      },
                      child: const Text(
                        'GB',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 38,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  height: 265,
                  child: Image.network(
                      'https://www.xda-developers.com/files/2021/07/Best-accessories-for-gaming-laptops.jpg'),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Category',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const CategoryItems(),
                // ProductSlide(),
                const SizedBox(height: 10),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
