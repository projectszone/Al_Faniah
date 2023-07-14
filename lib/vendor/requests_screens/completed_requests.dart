import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hsp_vendor/colors/app_theme.dart';
import 'package:hsp_vendor/utils/utils.dart';

import '../user/user_data.dart';

class CompletedRequests extends StatefulWidget {
  const CompletedRequests({Key? key}) : super(key: key);

  @override
  State<CompletedRequests> createState() => _CompletedRequestsState();
}

class _CompletedRequestsState extends State<CompletedRequests> {
  User? user = FirebaseAuth.instance.currentUser;
  final ref = FirebaseFirestore.instance.collection('order information');
  final TextEditingController _decline = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: AppTheme.colors.appbar,
        title:  Text(
          'COMPLETED REQUESTS',
          style:GoogleFonts.arsenal(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('order information')
                  .where('toHire',
                      isEqualTo: FirebaseAuth.instance.currentUser?.uid)
                  .where('status', isEqualTo: 'completed')
                  // .orderBy('date',descending: true)
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text(snapshot.error.toString(),
                      style: TextStyle(color: AppTheme.colors.appbar));
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: Text("Loading",
                        style: TextStyle(color: AppTheme.colors.appbar)),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children:
                        snapshot.data!.docs.map((DocumentSnapshot document) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppTheme.colors.background,
                              boxShadow: const [
                                BoxShadow(
                                    blurRadius: 3,
                                    color: Colors.grey
                                ),
                              ]
                          ),
                          child: ListTile(
                            contentPadding: EdgeInsets.all(10),
// confirm order code
                            onLongPress: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                      child: AlertDialog(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          backgroundColor: Colors.white,
                                          title: Text(
                                            'Delete Order?',
                                            style:GoogleFonts.arsenal(
                                                color: AppTheme.colors.appbar,
                                                fontWeight: FontWeight.bold),
                                          ),

                                          //alert dialogue code

                                          actions: [

                                            Center(
                                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'ORDER DESCRIPTION:',textAlign: TextAlign.start,
                                                          style:GoogleFonts.arsenal(
                                                              color: Colors.blue,
                                                              fontWeight: FontWeight.bold

                                                          ),
                                                        ),const SizedBox(height: 10,),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text("${document['description']}",style:GoogleFonts.arsenal(color: Colors.black,fontSize: 18),),
                                                        ),


                                                      ],
                                                    ),

                                                  ),
                                                  const SizedBox( height: 15,),
                                                  Container(
                                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'WORKING DATE:',textAlign: TextAlign.start,
                                                          style:GoogleFonts.arsenal(
                                                              color: Colors.blue,
                                                              fontWeight: FontWeight.bold

                                                          ),
                                                        ),const SizedBox(height: 10,),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text("${document['date']}",style:GoogleFonts.arsenal(color: Colors.black,fontSize: 18),),
                                                        ),


                                                      ],
                                                    ),

                                                  ),
                                                  const SizedBox( height: 15,),
                                                  Container(
                                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'WORKING TIME:',textAlign: TextAlign.start,
                                                          style:GoogleFonts.arsenal(
                                                              color: Colors.blue,
                                                              fontWeight: FontWeight.bold

                                                          ),
                                                        ),const SizedBox(height: 10,),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text("${document['date']}",style:GoogleFonts.arsenal(color: Colors.black,fontSize: 18),),
                                                        ),


                                                      ],
                                                    ),

                                                  ),
                                                  const SizedBox( height: 15,),
                                                  Container(
                                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'PRICE OFFER:',textAlign: TextAlign.start,
                                                          style:GoogleFonts.arsenal(
                                                              color: Colors.blue,
                                                              fontWeight: FontWeight.bold

                                                          ),
                                                        ),const SizedBox(height: 10,),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text("RS: ${document['price offer']}",style:GoogleFonts.arsenal(color: Colors.black,fontSize: 18),),
                                                        ),


                                                      ],
                                                    ),

                                                  ),
                                                  const SizedBox( height: 15,),
                                                  Container(
                                                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Text(
                                                          'ORDER ID:',textAlign: TextAlign.start,
                                                          style:GoogleFonts.arsenal(
                                                              color: Colors.blue,
                                                              fontWeight: FontWeight.bold

                                                          ),
                                                        ),const SizedBox(height: 10,),
                                                        Padding(
                                                          padding: const EdgeInsets.all(8.0),
                                                          child: Text("${document['id']}",style:GoogleFonts.arsenal(color: Colors.black,fontSize: 18),),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                TextButton(
                                                  child: Text(
                                                    'Cancel',
                                                    style:GoogleFonts.arsenal(
                                                        fontSize: 18,
                                                        color: AppTheme
                                                            .colors.appbar),
                                                  ),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                ),
                                                TextButton(
                                                    onPressed: () {

                                                     String doc_id = document['id'];
                                                     FirebaseFirestore.instance
                                                         .collection('order information').doc(doc_id).delete();
                                                     Navigator.pop(context);

                                                    },
                                                    child: Text(
                                                      'Delete',
                                                      style:GoogleFonts.arsenal(
                                                          fontSize: 18,
                                                          color: Colors.red),
                                                    )),
                                              ],
                                            )
                                          ]),
                                    );
                                  });
                            },
                            style: ListTileStyle.list,

                            dense: true,
                            title: Text("ORDER COMPLETED      ${document['order_date']}",style:GoogleFonts.arsenal(color: AppTheme.colors.appbar,fontWeight: FontWeight.bold,fontSize: 18),),
                            subtitle: Text('Long Press To Delete',style:GoogleFonts.arsenal(fontStyle:FontStyle.italic, color: Colors.blue,fontSize: 18),),
                            trailing: IconButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_)=> UserData(
                                    userId: document,
                                    OrderId : document.get('id'),
                                  )));
                                },
                                icon: Icon(Icons.info, color: AppTheme.colors.appbar,size: 34,)),

                            shape: RoundedRectangleBorder(

                                side: BorderSide(width: 1, color: AppTheme.colors.appbar),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            tileColor: AppTheme.colors.background,                        ),
                        ),
                      );
                    }).toList(),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
