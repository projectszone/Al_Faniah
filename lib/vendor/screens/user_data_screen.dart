import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class UserData extends StatefulWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  State<UserData> createState() => _UserDataState();
}

class _UserDataState extends State<UserData> {
  Future<void> _openMap(String lat, String long) async {
    String googleURL =
        'https://www.google.com/maps/search/?api=1&query=$lat,$long';
    await canLaunchUrlString(googleURL)
        ? await launchUrlString(googleURL)
        : throw 'Could not launch $googleURL';
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(
            'USER INFORMATION',
            style: GoogleFonts.arsenal(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          actions: [
            Row(
              children: [
                Text(
                  'Location',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 28, 31, 33)),
                ),
                IconButton(
                    onPressed: () {
                      _openMap('27.960640', '77.226410');
                    },
                    icon: Icon(
                      Icons.location_on_outlined,
                      size: 28,
                      color: const Color.fromARGB(255, 28, 31, 33),
                    ))
              ],
            )
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 710,
                width: 380,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 2,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    children: [
                      Text('User Information',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.arsenal(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 25,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 80,
                            backgroundImage: NetworkImage(
                                "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?w=826&t=st=1689427211~exp=1689427811~hmac=c669e4c862fe847c94ea6f2cb4a99443ebcac388f6dfde0309d018b01658d6e5"),
                            backgroundColor: Colors.transparent,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          ListTile(
                              tileColor: Colors.white,
                              title: Text('NAME:',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.arsenal(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("Awais",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.arsenal(
                                    fontSize: 18,
                                  )),
                              style: ListTileStyle.list,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          ListTile(
                              tileColor: Colors.white,
                              title: Text('PHONE:',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.arsenal(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("+923456789",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.arsenal(
                                    fontSize: 18,
                                  )),
                              style: ListTileStyle.list,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          ListTile(
                              tileColor: Colors.white,
                              title: Text('CITY:',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.arsenal(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text("Lahore",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.arsenal(
                                    fontSize: 18,
                                  )),
                              style: ListTileStyle.list,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          ListTile(
                              tileColor: Colors.white,
                              title: Text('ADDRESS:',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.arsenal(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                  "House no 2,Street 14B,Block ABC,Lahore City ",
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.arsenal(
                                    fontSize: 18,
                                  )),
                              style: ListTileStyle.list,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
