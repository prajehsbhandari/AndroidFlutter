import 'package:flutter/material.dart';
import '../repository/user_repository.dart';
import '../response/user_response.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontSize: 28),
        ),
        centerTitle: true,
        backgroundColor: Colors.red,
        automaticallyImplyLeading: false,
      ),
      body: FutureBuilder<UserResponse?>(
        future: UserRepository().userInfo(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            debugPrint(snapshot.data.toString());
            if (snapshot.data != null) {
              UserResponse userResponse = snapshot.data!;
              return Column(
                children: [
                  const SizedBox(height: 40),
                  const Center(
                    child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.deepOrange,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80')),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Center(
                                  child: Text(
                                'Details',
                                style: TextStyle(
                                    fontSize: 28,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                              const SizedBox(height: 30),
                              const Text(
                                'Username',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                userResponse.username!,
                                style: const TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Email',
                                style: TextStyle(
                                    fontSize: 24, color: Colors.white),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                userResponse.email!,
                                style: const TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        )),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {
                          Navigator.of(context).popAndPushNamed('/login');
                        },
                        child: const Text(
                          'Log Out',
                          style: TextStyle(fontSize: 24),
                        )),
                  ),
                ],
              );
            } else {
              return const Center(
                child: Text("No data"),
              );
            }
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          } else {
            return const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
              ),
            );
          }
        },
      ),
    );
  }
}
