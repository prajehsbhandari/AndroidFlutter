import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_benefit/screens/mainscreen.dart';

import '../../utils/controller.dart';

class Success extends StatefulWidget {
  const Success({Key? key}) : super(key: key);

  @override
  _SuccessState createState() => _SuccessState();
}

class _SuccessState extends State<Success> {
  @override
  Widget build(BuildContext context) {
    final CartController controller = Get.find();
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 200,
              width: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: const Image(
                  image: NetworkImage(
                      'https://c.tenor.com/ovo4iV_CijkAAAAS/school-boy.gif'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            "Successfully Placed the Order",
            style: TextStyle(
                fontSize: 28, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 30),
          SizedBox(
            height: 80,
            width: 300,
            child: ElevatedButton(
                child: const Text(
                  'Sh*t, I NEED MORE !',
                  style: TextStyle(fontSize: 24),
                ),
                onPressed: () {
                  controller.clearProduct();
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
