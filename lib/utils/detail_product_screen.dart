import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_benefit/utils/controller.dart';
import 'package:hive/hive.dart';

import '../model/favourite.dart';
import '../model/product.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  final CartController cartController = Get.put(CartController());
  late Box box2;
  List<String> id = [];
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    final lstProduct = ModalRoute.of(context)!.settings.arguments as Product;

    @override
    String nameP = lstProduct.name.toString();
    String priceP = lstProduct.price.toString();
    String imageP = 'http://10.0.2.2:8080/${lstProduct.image}';
    placeData() async {
      FavouriteM favourite = FavouriteM(
        name: nameP,
        price: priceP,
        image: imageP,
      );
      for (var i = 0; i < box2.length; i++) {
        id = id + [box2.getAt(i).name];
      }
      // debugPrint(id.toString());
      if (id.contains(nameP)) {
        return false;
      } else {
        await box2.add(favourite);
      }
    }

    @override
    void createBox() async {
      box2 = await Hive.openBox('favourite');
      placeData();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text(
          'Product Detail',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: height * 0.02),
              Text(
                lstProduct.name.toString(),
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: height * 0.02),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    color: Colors.black,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  child: Center(
                    child: Image.network(
                      'http://10.0.2.2:8080/${lstProduct.image}',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Price',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 20),
                  Text(
                    'Rs ${lstProduct.price}',
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.04),
              SizedBox(
                height: height * 0.17,
                child: Text(
                  lstProduct.description.toString(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              SizedBox(height: height * 0.01),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                            border: Border.all()),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.favorite_outlined,
                              size: 35,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                      onTap: () {
                        Get.snackbar("Product", "Added to Favourite");
                        createBox();
                      },
                    ),
                    InkWell(
                      child: Container(
                        height: height * 0.07,
                        width: width * 0.4,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                            ),
                            SizedBox(width: width * 0.05),
                            const Text(
                              'Add to Cart',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      onTap: () {
                        cartController.addProduct(lstProduct);
                        Get.snackbar(lstProduct.name.toString(),
                            "Successfully Added to Cart");
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
