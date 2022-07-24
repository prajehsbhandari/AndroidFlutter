import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/category_screen/category_items.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  var size, height, width;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(width: width * 0.03),
          InkWell(
            onTap: () =>
                Get.to(() => (const CategoryItems()), arguments: "Laptop"),
            child: Container(
              height: height * 0.15,
              width: width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.red,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: const Image(
                  image: NetworkImage(
                      'https://consumer.huawei.com/content/dam/huawei-cbg-site/common/mkt/plp/laptops/img-0224/X-Pro-2022.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: width * 0.03),
          InkWell(
            onTap: () =>
                Get.to(() => (const CategoryItems()), arguments: "Phone"),
            child: Container(
              height: height * 0.15,
              width: width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.red,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: const Image(
                  image: NetworkImage(
                      'https://img.freepik.com/free-photo/phone-screen-with-abstract-marble-aesthetic_53876-145553.jpg?w=2000'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: width * 0.03),
          InkWell(
            onTap: () =>
                Get.to(() => (const CategoryItems()), arguments: "Gadgets"),
            child: Container(
              height: height * 0.15,
              width: width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.red,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: const Image(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1468495244123-6c6c332eeece?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2FkZ2V0fGVufDB8fDB8fA%3D%3D&w=1000&q=80'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: width * 0.03),
          InkWell(
            onTap: () =>
                Get.to(() => (const CategoryItems()), arguments: "Gaming PC"),
            child: Container(
              height: height * 0.15,
              width: width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.red,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: const Image(
                  image: NetworkImage(
                      'https://thesecondangle.com/wp-content/uploads/2022/03/high-gaming-pc.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: width * 0.03),
          InkWell(
            onTap: () =>
                Get.to(() => (const CategoryItems()), arguments: "Accessories"),
            child: Container(
              height: height * 0.15,
              width: width * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Colors.red,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: const Image(
                  image: NetworkImage(
                      'https://beebom.com/wp-content/uploads/2016/12/18-Essential-Smartphone-Accessories-You-Can-Buy-in-2019.jpg?w=750&quality=75'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: width * 0.04),
        ],
      ),
    );
  }
}
