import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.teal),
        home: DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: AppBar(
              actions: [
                const Icon(
                  Icons.search,
                ),
                const SizedBox(
                  width: 10,
                ),
                PopupMenuButton(
                    itemBuilder: (context) => [
                          const PopupMenuItem(
                            child: Text('New Group'),
                          ),
                          const PopupMenuItem(
                            child: Text('Settings'),
                          ),
                          const PopupMenuItem(
                            child: Text('Log out'),
                          ),
                        ])
              ],
              centerTitle: false,
              title: const Text('whatsapp'),
              bottom: const TabBar(
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    icon: Text('chats'),
                  ),
                  Tab(
                    icon: Text('status'),
                  ),
                  Tab(
                    icon: Text('calls'),
                  ),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                const Center(
                  child: Text("Camera screen"),
                ),
                ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const ListTile(
                        leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                        title: Text('Sarah james'),
                        subtitle: Text('where are you mate'),
                        trailing: Text('5:49 PM'),
                      );
                    }),
                ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.teal.shade300,
                          child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                        ),
                        title: const Text('Sarah james'),
                        subtitle: Row(
                          children: [
                            Icon(Icons.timer),
                            SizedBox(
                              width: 5,
                            ),
                            Text('data')
                          ],
                        ),
                      );
                    }),
                ListView.builder(
                    itemCount: 100,
                    itemBuilder: (context, index) {
                      return ListTile(
                        leading: const CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.pexels.com/photos/1559486/pexels-photo-1559486.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2')),
                        title: const Text('Sarah james'),
                        subtitle: Row(children: const [
                          Icon(
                            Icons.phone,
                            size: 15,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('missed call')
                        ]),
                        trailing: const Text('5:49 PM'),
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
