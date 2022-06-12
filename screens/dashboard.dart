import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Good Benefit',
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 40,
                      width: 200,
                      child: TextFormField(
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.search),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  height: 300,
                  child: Image.network(
                      'https://images.unsplash.com/photo-1648737154448-ccf0cafae1c2?crop=entropy&cs=tinysrgb&fm=jpg&ixlib=rb-1.2.1&q=80&raw_url=true&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170'),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Top Categories',
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
    );
  }
}
