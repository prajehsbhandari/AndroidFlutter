import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../utils/controller.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  final UserName uName = Get.put(UserName());

  @override
  void initState() {
    super.initState();
    openBox();
  }

  openBox() async {
    await Hive.openBox('favourite${uName.userName}');
  }

  @override
  Widget build(BuildContext context) {
    var box2 = Hive.box('favourite${uName.userName}');
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red,
        title: const Text(
          'Favourites',
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: ValueListenableBuilder(
        valueListenable: box2.listenable(),
        builder: (context, Box box, widget) {
          if (box.isEmpty) {
            return const Center(
              child: Text(
                'Add Products',
                style: TextStyle(fontSize: 20),
              ),
            );
          } else {
            return ListView.builder(
              itemCount: box.length,
              itemBuilder: (context, index) {
                var data = box2.getAt(index)!;
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Container(
                    height: height * 0.2,
                    width: width * 1,
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: height * 0.2,
                          child: Image(image: NetworkImage(data.image)),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              data.name,
                              style: const TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Text(
                              'Rs ' + data.price,
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            ElevatedButton(
                              style:
                                  ElevatedButton.styleFrom(primary: Colors.red),
                              onPressed: () => box2.deleteAt(index),
                              child: const Icon(
                                Icons.delete,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: width * 0.03),
                      ],
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
