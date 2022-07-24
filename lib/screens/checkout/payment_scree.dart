import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_benefit/screens/checkout/success.dart';

import '../../utils/controller.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  var value;
  var _site;
  List lables = ['Esewa', 'Khalti', 'Cash On Delivery'];
  @override
  Widget build(BuildContext context) {
    final CartController controller = Get.find();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Payment Method'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(height: 50),
        const SizedBox(height: 20),
        Text(
          'Your Total is ${controller.total}',
          style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 30),
        ListTile(
          title: const Text(
            'Confirm Payment',
            style: TextStyle(fontSize: 24),
          ),
          leading: Radio(
            value: 'cod',
            groupValue: _site,
            onChanged: (value) {
              setState(() {
                _site = value;
              });
            },
          ),
        ),
        const SizedBox(height: 200),
        SizedBox(
          height: 60,
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red),
            onPressed: () {
              Get.to(() => const Success());
            },
            child: const Text(
              'Confirm Payment',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ]),
    );
  }
}
