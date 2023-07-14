import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class PendingRequests extends StatefulWidget {
  const PendingRequests({Key? key}) : super(key: key);

  @override
  State<PendingRequests> createState() => _PendingRequestsState();
}

class _PendingRequestsState extends State<PendingRequests> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'PENDING REQUESTS',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),

      // order retrieve
      body: Column(children: [
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: const [
                      BoxShadow(blurRadius: 3, color: Colors.grey),
                    ]),
                child: ListTile(
                  contentPadding: EdgeInsets.all(10),
// confirm order code
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return Container(
                            width: 300,
                            child: AlertDialog(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                backgroundColor: Colors.white,
                                title: Text(
                                  'ORDER DETAILS..',
                                  style: GoogleFonts.arsenal(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                //alert dialogue code

                                actions: [
                                  Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'ORDER DESCRIPTION:',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.arsenal(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Description",
                                                  style: GoogleFonts.arsenal(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'WORKING DATE:',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.arsenal(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Date",
                                                  style: GoogleFonts.arsenal(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'WORKING TIME:',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.arsenal(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "Date",
                                                  style: GoogleFonts.arsenal(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'PRICE OFFER:',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.arsenal(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "price offer",
                                                  style: GoogleFonts.arsenal(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 15,
                                        ),
                                        Container(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'ORDER ID:',
                                                textAlign: TextAlign.start,
                                                style: GoogleFonts.arsenal(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                  "1234567",
                                                  style: GoogleFonts.arsenal(
                                                      color: Colors.black,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      TextButton(
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) {
                                                  return Container(
                                                    child: AlertDialog(
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(15),
                                                        ),
                                                        backgroundColor:
                                                            Colors.white,
                                                        title: Text(
                                                          'Enter Reason To Decline',
                                                          style: GoogleFonts
                                                              .arsenal(
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                        ),

                                                        //alert dialogue code

                                                        actions: [
                                                          Form(
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsets
                                                                          .all(
                                                                      10.0),
                                                              child:
                                                                  TextFormField(
                                                                keyboardType:
                                                                    TextInputType
                                                                        .text,
                                                                decoration:
                                                                    InputDecoration(
                                                                  hintText:
                                                                      'Enter Reason',
                                                                  labelText:
                                                                      'Enter Reason',
                                                                  filled: true,
                                                                  prefixIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .rate_review_rounded,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          const SizedBox(
                                                            height: 5,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(15.0),
                                                            child: TextButton(
                                                              onPressed: () {},
                                                              child: Text(
                                                                  'CONFIRM',
                                                                  style:
                                                                      TextStyle(
                                                                    fontSize:
                                                                        16,
                                                                  )),
                                                            ),
                                                          )
                                                        ]),
                                                  );
                                                });
                                          },
                                          child: Text(
                                            'Decline',
                                            style: GoogleFonts.arsenal(
                                                fontSize: 18,
                                                color: Colors.red),
                                          )),
                                      TextButton(
                                          onPressed: () {},
                                          child: Text(
                                            'Accept',
                                            style: GoogleFonts.arsenal(
                                                fontSize: 18,
                                                color: Colors.blue),
                                          )),
                                    ],
                                  )
                                ]),
                          );
                        });
                  },
                  style: ListTileStyle.list,
                  dense: true,
                  title: Text(
                    "1 NEW ORDER      8/12",
                    style: GoogleFonts.arsenal(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  subtitle: Text(
                    'Tap to See Details',
                    style: GoogleFonts.arsenal(
                        fontStyle: FontStyle.italic,
                        color: Colors.blue,
                        fontSize: 18),
                  ),
                  trailing: IconButton(
                      onPressed: () {
                        // Navigator.push(
                        //     context,
                        // MaterialPageRoute(
                        //     builder: (_) => UserData(
                        //           userId: document,
                        //           OrderId: document.get('id'),
                        //         )));
                      },
                      icon: Icon(
                        Icons.info,
                        size: 34,
                      )),
                  shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
