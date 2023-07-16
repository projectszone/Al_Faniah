import 'package:al_faniah/themes/colors_class.dart';
import 'package:badges/badges.dart ' as badge;
import 'package:flutter/material.dart';

class UpdateInformation extends StatefulWidget {
  const UpdateInformation({Key? key}) : super(key: key);

  @override
  State<UpdateInformation> createState() => _UpdateInformationState();
}

class _UpdateInformationState extends State<UpdateInformation> {
  TextEditingController _name = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Text(
            'UPDATE INFORMATION',
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Container(
                            child: AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: Colors.white,
                                title: Text(
                                  'SELECT METHOD',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),

                                //alert dialogue code

                                actions: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.image,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'GALLERY',
                                              style: TextStyle(),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Row(
                                          children: [
                                            Icon(
                                              Icons.camera_alt,
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              'CAMERA',
                                              style: TextStyle(),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  )
                                ]),
                          );
                        });
                  },
                  child: badge.Badge(
                    badgeContent: Icon(Icons.edit),
                    position: badge.BadgePosition.bottomEnd(bottom: 5, end: 10),
                    showBadge: true,
                    badgeStyle: badge.BadgeStyle(
                      badgeColor: Colors.blue,
                    ),
                    child: const CircleAvatar(
                      radius: 90,
                      backgroundImage: NetworkImage(
                        'https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?size=626&ext=jpg&uid=R109865333&ga=GA1.1.1714543575.1689421395&semt=ais',
                      ),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: TextFormField(
                controller: _name,
                keyboardType: TextInputType.name,
                style: TextStyle(),
                decoration: InputDecoration(
                  label: Text(
                    'NAME',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.person,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Pallete.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Name';
                  }
                  return null;
                },
              ),
            ),

            // phone code
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: TextFormField(
                controller: _phone,
                style: TextStyle(),
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  label: Text(
                    'PHONE #',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(
                    Icons.phone_enabled_rounded,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter Phone';
                  }
                  return null;
                },
              ),
            ),

            // city
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: TextFormField(
                controller: _city,
                style: TextStyle(),
                keyboardType: TextInputType.streetAddress,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 18),
                  fillColor: Colors.white,
                  filled: true,
                  label: Text(
                    'CITY',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  prefixIcon: Icon(
                    Icons.location_city_rounded,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter City';
                  }
                  return null;
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              child: TextFormField(
                controller: _description,
                style: TextStyle(),
                keyboardType: TextInputType.multiline,
                maxLines: 6,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 18),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: 'Description',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Enter City';
                  }
                  return null;
                },
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            // submit button code
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 60,
                width: 280,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextButton(
                  onPressed: () async {},
                  child: Text(
                    'UPDATE',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
