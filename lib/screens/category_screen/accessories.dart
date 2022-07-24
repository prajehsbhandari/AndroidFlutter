import 'package:flutter/material.dart';
import '../../model/product.dart';
import '../../repository/product_repository.dart';
import '../../response/get_product_response.dart';

class Accessories extends StatefulWidget {
  const Accessories({Key? key}) : super(key: key);

  @override
  State<Accessories> createState() => _AccessoriesState();
}

class _AccessoriesState extends State<Accessories> {
  var size, height, width;
  List<Map> newData = [];
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white);
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return FutureBuilder<ProductResponse?>(
      future: ProductRepository().getProducts(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.data != null) {
            List<Product> lstProduct = snapshot.data!.data!;

            for (int a = lstProduct.length - 1; a > -1; a--) {
              if (lstProduct[a].category != 'Accessories') {
                lstProduct.removeAt(a);
              }
            }
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 0,
                ),
                itemCount: lstProduct.length,
                itemBuilder: (BuildContext ctx, index) {
                  debugPrint(index.toString());
                  return InkWell(
                    onTap: () => Navigator.of(context).pushNamed('/productinfo',
                        arguments: lstProduct[index]),
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        color: Colors.red,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: height * 0.01),
                          SizedBox(
                            height: height * 0.2,
                            width: width * 0.37,
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                              child: Image(
                                image: NetworkImage(
                                  'http://10.0.2.2:8080/${lstProduct[index].image}',
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          SizedBox(height: height * 0.02),
                          Text(lstProduct[index].name.toString(),
                              style: textStyle),
                          SizedBox(height: height * 0.01),
                          Text(
                            lstProduct[index].price.toString(),
                            style: textStyle,
                          ),
                        ],
                      ),
                    ),
                  );
                });
          } else {
            return const Center(
              child: Text("Data"),
            );
          }
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.deepOrange,
            ),
          );
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        } else {
          return const Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.deepOrange),
            ),
          );
        }
      },
    );
  }
}
