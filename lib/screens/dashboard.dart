import 'package:flutter/material.dart';
import 'package:good_benefit/utils/categories.dart';

import '../utils/product_slide.dart';

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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/map');
                      },
                      child: const Text(
                        'Good Benefit',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 38,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                const Slider(),
                const Text(
                  'Category',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const CategoryScreen(),
                const SizedBox(height: 20),
                const Text(
                  'Product ShowCase',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 600, child: ProductSlide()),
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

class Slider extends StatefulWidget {
  const Slider({Key? key}) : super(key: key);

  @override
  State<Slider> createState() => _SliderState();
}

class _SliderState extends State<Slider> {
  int currentIndex = 0;
  final PageController controller = PageController();

  List<String> images = [
    "https://picsum.photos/id/240/200/300",
    "https://picsum.photos/id/241/200/300",
    "https://picsum.photos/id/242/200/300",
    "https://picsum.photos/id/243/200/300",
    "https://picsum.photos/id/244/200/300",
    "https://picsum.photos/id/250/200/300",
    "https://picsum.photos/id/251/200/300",
    "https://picsum.photos/id/252/200/300",
    "https://picsum.photos/id/253/200/300",
    "https://picsum.photos/id/254/200/300",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 200,
          width: double.infinity,
          child: PageView.builder(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index % images.length;
              });
            },
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Image.network(
                    images[index % images.length],
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 0; i < images.length; i++)
              buildIndicator(currentIndex == i)
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  controller.jumpToPage(currentIndex - 1);
                },
                icon: const Icon(Icons.arrow_back),
              ),
              IconButton(
                onPressed: () {
                  controller.jumpToPage(currentIndex + 1);
                },
                icon: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
        height: isSelected ? 12 : 10,
        width: isSelected ? 12 : 10,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.black : Colors.grey,
        ),
      ),
    );
  }
}
