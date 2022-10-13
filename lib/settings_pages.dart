import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPages extends StatelessWidget {
  static const String id = "settings_pages";
  const SettingsPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('Settings'),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 12),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'images/profile.jpg',
                          height: 65,
                          width: 65,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Imran Khan',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'At the gym',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.qr_code,
                        color: Color(0xff075E55),
                      ),
                    ],
                  ),
                ),
                const Divider(),
                const ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.key),
                  ),
                  title: Text(
                    'Account',
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    'Privacy, security, change number',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.chat),
                  ),
                  title: Text(
                    'Chat',
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    'Theme, wallpapers,chat history',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.notifications),
                  ),
                  title: Text(
                    'Notifications',
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    'Message, group & call tones',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.circle_outlined),
                  ),
                  title: Text(
                    'Storage and data',
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    'Network usage, auto download',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.language),
                  ),
                  title: Text(
                    'App language',
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    "English (phone's language)",
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.help_outline_rounded),
                  ),
                  title: Text(
                    'Help',
                    style: TextStyle(fontSize: 17),
                  ),
                  subtitle: Text(
                    'Help center, contact us, privacy policy',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
                const ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 6),
                    child: Icon(Icons.people_alt),
                  ),
                  title: Text(
                    'Invite a friend',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Column(
                      children: [
                        const Text(
                          'from',
                          style: TextStyle(fontSize: 15, color: Colors.black54),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              FontAwesomeIcons.meta,
                              size: 18,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text('Meta',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
