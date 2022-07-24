import 'package:flutter/material.dart';
import 'package:good_benefit/screens/category_screen/accessories.dart';
import 'package:good_benefit/screens/category_screen/gadgets.dart';
import 'package:good_benefit/screens/category_screen/gamingpc.dart';
import 'package:good_benefit/screens/category_screen/laptop.dart';
import 'package:good_benefit/screens/category_screen/phone.dart';

class CategoryItems extends StatefulWidget {
  const CategoryItems({Key? key}) : super(key: key);

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          category.toString().toUpperCase(),
          style: const TextStyle(fontSize: 28),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: category == 'Gadget'
            ? const Gadget()
            : category == 'Accessories'
                ? const Accessories()
                : category == 'Gaming PC'
                    ? const GamingPC()
                    : category == 'Laptop'
                        ? const Laptop()
                        : const Phone(),
      ),
    );
  }
}
