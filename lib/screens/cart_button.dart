import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_benefit/screens/cart.dart';
import 'package:good_benefit/screens/cart_total.dart';

import '../../utils/controller.dart';

class CartScreen extends StatelessWidget {
  final CartController controller = Get.find();
  CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartProduct(),
        CartTotal(),
      ],
    );
  }
}
