import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static const String id = 'home_screen';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.teal,
            centerTitle: false,
            title: const Text('WhatsApp'),
            bottom: const TabBar(
              labelColor: Colors.white, // Active tab text color
              // unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  icon: Icon(Icons.chat),
                  text: 'Chats',
                ),
                Tab(
                  icon: Icon(Icons.update),
                  text: 'Updates',
                ),
                Tab(
                  icon: Icon(Icons.group),
                  text: 'Communities',
                ),
                Tab(
                  icon: Icon(Icons.call),
                  text: 'Calls',
                ),
              ],
            ),
            actions: [
              const Icon(Icons.camera_alt),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: '1',
                          child: Text('New group'),
                        ),
                        const PopupMenuItem(
                          value: '2',
                          child: Text('New broadcast'),
                        ),
                        const PopupMenuItem(
                          value: '3',
                          child: Text('Linked devices'),
                        ),
                        const PopupMenuItem(
                          value: '4',
                          child: Text('Starred messages'),
                        ),
                        const PopupMenuItem(
                          value: '5',
                          child: Text('Settings'),
                        ),
                      ]),
              const SizedBox(
                width: 10,
              ),
            ],
          ),
          body: TabBarView(
            children: [
              // code for chats
              ListView.builder(
                  itemCount: 60,
                  itemBuilder: (context, index) {
                    return const Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                          ),
                          title: Text('khalid'),
                          subtitle: Text('Where are you ..'),
                          trailing: Text('11:45 am'),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/imii.jpg'),
                          ),
                          title: Text('Imii'),
                          subtitle: Text('chartaa ee'),
                          trailing: Text('06:00 pm'),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/kundi.jpg'),
                          ),
                          title: Text('Wajid kundii'),
                          subtitle: Text('congratulations'),
                          trailing: Text('03:30 pm'),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/shen.jpg'),
                          ),
                          title: Text('Shinwari'),
                          subtitle: Text('Program la zoo'),
                          trailing: Text('08:30 am'),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/srk.jpeg'),
                          ),
                          title: Text('Hameed majeed'),
                          subtitle: Text('Digsol mai huo..'),
                          trailing: Text('12:30 pm'),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/uzii.jpg'),
                          ),
                          title: Text('Uzair khan'),
                          subtitle: Text('dabii taa zoo..'),
                          trailing: Text('06:30 pm'),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/zadii.jpg'),
                          ),
                          title: Text('Muhammad Zaid'),
                          subtitle: Text('al burhan taa talii waii..'),
                          trailing: Text('10:30 pm'),
                        ),
                      ],
                    );
                  }),
              // code for updates
              ListView.builder(
                  itemCount: 60,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 3)),
                            child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                            ),
                          ),
                          title: const Text('khalid'),
                          subtitle: const Text('02 minutes ago'),
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 3)),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('images/imii.jpg'),
                            ),
                          ),
                          title: const Text('Imii'),
                          subtitle: const Text('20 minutes ago'),
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 3)),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('images/kundi.jpg'),
                            ),
                          ),
                          title: const Text('Wajid kundii'),
                          subtitle: const Text('35 minutes ago'),
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 3)),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('images/shen.jpg'),
                            ),
                          ),
                          title: const Text('Shinwari'),
                          subtitle: const Text('09:43 am'),
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 3)),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('images/srk.jpeg'),
                            ),
                          ),
                          title: const Text('Hameed majeed'),
                          subtitle: const Text('07:30 am'),
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 3)),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('images/uzii.jpg'),
                            ),
                          ),
                          title: const Text('Uzair khan'),
                          subtitle: const Text('Yesterday'),
                        ),
                        ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: Colors.green, width: 3)),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage('images/zadii.jpg'),
                            ),
                          ),
                          title: const Text('Muhammad Zaid'),
                          subtitle: const Text('Yesterday'),
                        ),
                      ],
                    );
                  }),
              // code for communities
              Text('communities'),
              // code for  calls

              ListView.builder(
                  itemCount: 60,
                  itemBuilder: (context, index) {
                    return const Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://images.unsplash.com/photo-1522075469751-3a6694fb2f61?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                          ),
                          title: Text('khalid'),
                          subtitle: Text('Today, 12:00 pm'),
                          trailing: Icon(Icons.call),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/imii.jpg'),
                          ),
                          title: Text(
                            'Imii',
                            style: TextStyle(color: Colors.red),
                          ),
                          subtitle: Text('Today, 08:00 am'),
                          trailing: Icon(Icons.call),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/kundi.jpg'),
                          ),
                          title: Text('Wajid kundii',
                              style: TextStyle(color: Colors.red)),
                          subtitle: Text('Today, 09:18 am'),
                          trailing: Icon(Icons.call),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/shen.jpg'),
                          ),
                          title: Text('Shinwari'),
                          subtitle: Text('Yesterday, 10:00 am'),
                          trailing: Icon(Icons.call),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/srk.jpeg'),
                          ),
                          title: Text('Hameed majeed',
                              style: TextStyle(color: Colors.red)),
                          subtitle: Text('Today, 07:00 pm'),
                          trailing: Icon(Icons.call),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/uzii.jpg'),
                          ),
                          title: Text('Uzair khan'),
                          subtitle: Text('Yesterday, 06:45 pm'),
                          trailing: Icon(Icons.call),
                        ),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('images/zadii.jpg'),
                          ),
                          title: Text('Muhammad Zaid',
                              style: TextStyle(color: Colors.red)),
                          subtitle: Text('Yesterday, 03:45 pm'),
                          trailing: Icon(Icons.call),
                        ),
                      ],
                    );
                  }),
            ],
          ),
        ));
  }
}

//  only text for the tab Bar
// Text(
//   'Chats',
//   style: TextStyle(
//       fontSize: 11,
//       color: Colors.white,
//       fontWeight: FontWeight.bold),
// ),
// // const SizedBox()
// Text('Updates',
//     style: TextStyle(
//         fontSize: 11,
//         color: Colors.white,
//         fontWeight: FontWeight.bold)),
// Text('Communities',
//     style: TextStyle(
//         fontSize: 11,
//         color: Colors.white,
//         fontWeight: FontWeight.bold)),
// Text('Calls',
//     style: TextStyle(
//         fontSize: 11,
//         color: Colors.white,
//         fontWeight: FontWeight.bold)),
