import 'package:flutter/material.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: TextFormField(
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        size: 35,
                        color: Colors.pink,
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
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Mobile Phones',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 180,
                        width: 200,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://www.yankodesign.com/images/design_news/2021/08/auto-draft/apple_concepts_iphone_one_03.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 180,
                        width: 200,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://oasis.opstatics.com/content/dam/oasis/page/2022/na/home/10-pro/10NA_Green_S_.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 180,
                        width: 200,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://www.telstra.com.au/content/dam/tcom/lego/2021/plans-devices/mobiles/samsung-galaxy-s22-series/header-desk-samsung-galaxy-s22-series-764x500-2x.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 180,
                        width: 200,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://media.wired.com/photos/6244999edd9582abaa390782/master/w_1600%2Cc_limit/OnePlus-10-Review-Back-Cameras-Gear.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 180,
                        width: 200,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://www.androidheadlines.com/wp-content/uploads/2022/06/Nothing-Phone-1-image-4.jpeg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 180,
                        width: 200,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://i02.appmifile.com/429_operator_in/07/04/2022/ab9969f0cc2cab0e3067a47eb2f4b299.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Gaming',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://assets-prd.ignimgs.com/2021/12/14/dualsensethumbnail-1639494235948.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1648737154448-ccf0cafae1c2?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1648737154448-ccf0cafae1c2?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1648737154448-ccf0cafae1c2?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1648737154448-ccf0cafae1c2?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        height: 80,
                        width: 100,
                        decoration: BoxDecoration(border: Border.all()),
                        child: Image.network(
                          'https://images.unsplash.com/photo-1648737154448-ccf0cafae1c2?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_sharp),
            label: 'Favourites',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'User',
            backgroundColor: Colors.red,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
      ),
    );
  }
}
