import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsap_ui/settings_pages.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('WhatsApp'),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('CHATS'),
              ),
              Tab(
                child: Text('STATUS'),
              ),
              Tab(
                child: Text('CALLS'),
              ),
            ]),
            actions: [
              const Icon(Icons.search),
              const SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  onSelected: (selected) {
                    if (selected == 5) {
                      Navigator.pushNamed(context, SettingsPages.id);
                    }
                  },
                  icon: const Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => const [
                        PopupMenuItem(
                          value: 1,
                          child: Text('New group'),
                        ),
                        PopupMenuItem(value: 2, child: Text('New broadcast')),
                        PopupMenuItem(
                          value: 3,
                          child: Text('Link devices'),
                        ),
                        PopupMenuItem(
                            value: 4, child: Text('Starred messages')),
                        PopupMenuItem(value: 5, child: Text('Settings')),
                      ]),
              const SizedBox(
                width: 5,
              ),
            ],
          ),
          body: TabBarView(children: [
            Container(
              color: Colors.black,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return index % 3 == 1
                        ? ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: index % 2 == 0
                                  ? const AssetImage('images/10.jpg')
                                  : const AssetImage('images/13.jpg'),
                            ),
                            title: index % 2 == 0
                                ? const Text(
                                    'Haddi Luv',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Rubik Medium',
                                        color: Colors.black),
                                  )
                                : const Text(
                                    'Komal Rumi',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Rubik Medium',
                                        color: Colors.black),
                                  ),
                            subtitle: index % 2 == 0
                                ? const Text('I am comming to Party')
                                : const Text('Hy You wanna join us?'),
                            trailing: index % 2 == 0
                                ? const Text('2:34 am')
                                : const Text('8:45 pm'),
                          )
                        : ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: index % 2 == 0
                                  ? const AssetImage('images/profile.jpg')
                                  : const AssetImage('images/14.jpg'),
                            ),
                            title: index % 2 == 0
                                ? const Text(
                                    'Imran Khan',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Rubik Medium',
                                        color: Colors.black),
                                  )
                                : const Text(
                                    'ZoNi Rian',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Rubik Medium',
                                        color: Colors.black),
                                  ),
                            subtitle: index % 2 == 0
                                ? const Text('Before i get on DSA')
                                : const Text('Hy You got the mail'),
                            trailing: index % 2 == 0
                                ? const Text('00:34 am')
                                : const Text('6:45 pm'),
                          );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(1.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey, width: 3),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(40),
                              child: Image.asset(
                                'images/profile.jpg',
                                height: 55,
                                width: 55,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'My Status',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Tab to add status update',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black54),
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Container(
                              child: const Icon(
                            Icons.more_vert,
                            color: Color(0xff075E55),
                          ))
                        ],
                      )),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text('Recent Updates',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.6),
                          ))),
                  for (int i = 9; i <= 10; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(children: [
                        Container(
                          padding: const EdgeInsets.all(1.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border:
                                  Border.all(color: Colors.green, width: 3)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'images/$i.jpg',
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              i % 9 == 0
                                  ? const Text(
                                      'Rozi',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : const Text(
                                      'Alex',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                              const SizedBox(
                                height: 8,
                              ),
                              i % 9 == 0
                                  ? const Text(
                                      ' 23 minutes ago',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54),
                                    )
                                  : const Text(
                                      ' Today, 12:09pm ',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54),
                                    ),
                            ],
                          ),
                        )
                      ]),
                    ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.topLeft,
                      child: Text('Viewed Updates',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black.withOpacity(0.6),
                          ))),
                  for (int i = 3; i <= 4; i++)
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      child: Row(children: [
                        Container(
                          padding: const EdgeInsets.all(1.5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(color: Colors.grey, width: 3)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(40),
                            child: Image.asset(
                              'images/$i.jpg',
                              height: 55,
                              width: 55,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              i % 3 == 0
                                  ? const Text(
                                      'Sarah',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  : const Text(
                                      'Roney',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                              const SizedBox(
                                height: 8,
                              ),
                              i % 3 == 0
                                  ? const Text(
                                      ' Today, 2:51',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54),
                                    )
                                  : const Text(
                                      ' Yesterday, 6:09pm ',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.black54),
                                    ),
                            ],
                          ),
                        )
                      ]),
                    )
                ],
              ),
            ),
            ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return index % 3 == 1
                      ? ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: index % 2 == 0
                                ? const AssetImage('images/9.jpg')
                                : const AssetImage('images/13.jpg'),
                          ),
                          title: index % 2 == 0
                              ? const Text(
                                  'Rumi',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Rubik Medium',
                                      color: Colors.black),
                                )
                              : const Text(
                                  'Komal Rumi',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Rubik Medium',
                                      color: Colors.black),
                                ),
                          subtitle: index % 2 == 0
                              ? const Text('(2) september 23,18:23')
                              : const Text('Today,12:09'),
                          trailing: index % 2 == 0
                              ? const Icon(Icons.phone,
                                  color: Color(0xff075E55))
                              : const Icon(
                                  CupertinoIcons.videocam_fill,
                                  color: Color(0xff075E55),
                                ),
                        )
                      : ListTile(
                          leading: CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: index % 2 == 0
                                ? const AssetImage('images/profile.jpg')
                                : const AssetImage('images/10.jpg'),
                          ),
                          title: index % 2 == 0
                              ? const Text(
                                  'Imran Khan',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Rubik Medium',
                                      color: Colors.black),
                                )
                              : const Text(
                                  'John ',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Rubik Medium',
                                      color: Colors.black),
                                ),
                          subtitle: index % 2 == 0
                              ? const Text('(3) Today, 13:34')
                              : const Text('Yesterday 17:54'),
                          trailing: index % 2 == 0
                              ? const Icon(
                                  CupertinoIcons.videocam_fill,
                                  color: Color(0xff075E55),
                                )
                              : const Icon(
                                  Icons.phone,
                                  color: Color(0xff075E55),
                                ),
                        );
                }),
          ]),
          // floatingActionButton: FloatingActionButton(
          //   backgroundColor: const Color(0xff075E55),
          //   onPressed: () {},
          //   child: const Icon(Icons.chat),
          // ),
        ));
  }
}
