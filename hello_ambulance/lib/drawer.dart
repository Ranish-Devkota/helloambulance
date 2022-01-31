import 'package:flutter/material.dart';
import 'package:hello_ambulance/Pages/aboutuspage.dart';
import 'package:hello_ambulance/Pages/contactuspage.dart';
import 'package:hello_ambulance/Pages/donatepage.dart';
import 'package:hello_ambulance/Pages/privacypolicypage.dart';
import 'package:hello_ambulance/Pages/termsandconditionpage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share/share.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            // padding: EdgeInsets.all(0),
            // margin: EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: Colors.grey[50],
            ),
            child: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[50],
                    backgroundImage: AssetImage('assets/images/bg.png'),
                    // child: Image.asset(
                    //   "assets/images/bg.png",
                    //   fit: BoxFit.,
                    // ),
                    radius: 44.0,
                  ),
                ),
                Align(
                  alignment: Alignment.center + Alignment(0, 0.5),
                  child: Text(
                    "HELLO AMBULANCE",
                    style: GoogleFonts.righteous(
                      fontSize: 17.0,
                      color: Colors.red,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center + Alignment(0, 0.8),
                  child: Text(
                    "Ambulance in One Touch",
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.red,
                    ),
                  ),
                )
              ],
            ),
          ),
          // Divider(
          //   thickness: 1.2,
          //   color: Colors.red[200],
          // ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutusPage(
                    title: 'ABOUT US',
                  ),
                ),
              );
            },
            leading: Icon(Icons.info_rounded),
            title: Text(
              "ABOUT US",
              style: GoogleFonts.righteous(),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ContactusPage(
                    title: "CONTACT US",
                  ),
                ),
              );
            },
            leading: Icon(Icons.contact_phone_outlined),
            title: Text(
              "CONTACT US",
              style: GoogleFonts.righteous(),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              // navigate to share
              final RenderBox box = context.findRenderObject() as RenderBox;
              Share.share(
                  'This is very useful app for calling ambulances nearby in emergency. You can download Hello-Ambulance app from this link: https://play.google.com/store/apps/details?id=com.ambulance.hello_ambulance',
                  sharePositionOrigin:
                      box.localToGlobal(Offset.zero) & box.size);
            },
            leading: Icon(Icons.share),
            title: Text(
              "SHARE THE APP",
              style: GoogleFonts.righteous(),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DonatePage(
                    title: "HELP",
                  ),
                ),
              );
              // navigate to help
            },
            leading: Icon(Icons.help),
            title: Text(
              "HELP US",
              style: GoogleFonts.righteous(),
            ),
          ),

          Divider(
            thickness: 1.2,
            color: Colors.grey[300],
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PrivacypolicyPage(
                    title: "PRIVACY POLICY",
                  ),
                ),
              );
            },
            leading: Icon(Icons.privacy_tip),
            title: Text(
              "PRIVACY POLICY",
              style: GoogleFonts.righteous(),
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TermsandconditionPage(
                    title: "TERMS AND CONDITIONS",
                  ),
                ),
              );
            },
            leading: Icon(Icons.menu_book),
            title: Text(
              "TERMS AND CONDITIONS",
              style: GoogleFonts.righteous(),
            ),
          ),
        ],
      ),
    );
  }
}
