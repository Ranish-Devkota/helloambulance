import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Ranish Devkota"),
            accountEmail: Text("devkotaranish454@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: Text("R"),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.account_circle_outlined),
            title: Text("DRIVER'S DETAILS"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.settings),
            title: Text("SETTINGS"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.info_rounded),
            title: Text("ABOUT US"),
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.contact_phone_outlined),
            title: Text("CONTACTS"),
          ),
          Divider(
            thickness: 2.6,
            color: Colors.red,
          ),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.exit_to_app_outlined),
            title: Text("LOG-OUT"),
          ),
        ],
      ),
    );
  }
}
