import 'dart:convert';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hsp_vendor/colors/app_theme.dart';
import 'package:hsp_vendor/user/user_data.dart';
import 'package:http/http.dart' as http;

class ActiveRequest extends StatefulWidget {
  const ActiveRequest({Key? key}) : super(key: key);

  @override
  State<ActiveRequest> createState() => _ActiveRequestState();
}

class _ActiveRequestState extends State<ActiveRequest> {
  User? user = FirebaseAuth.instance.currentUser;
  final ref = FirebaseFirestore.instance.collection('order information');
  void sendPushMessage(String token, String title,String body, )  async {
    try{
      http.Response respone = await http.post(
        Uri.parse("https://fcm.googleapis.com/fcm/send"),
        headers: <String, String>{
          HttpHeaders.contentTypeHeader: 'application/json',
          HttpHeaders.authorizationHeader: "key=AAAAQFL7-Sc:APA91bGSn5n9y9HxAfv3RH3PxYu6sRtP2787E30F3lqF_o1YPY3PCUEU7AjamJ11T7NgIB9V_Biq-CUPwEi_Q_vLIiQsS8_fu6H3zG2Ejskf1fU7xG_V65Prg5kIHxloRZALNqoe_-ac",
        },
        body: jsonEncode(
          <String, dynamic>{
            'priority': 'high',
            'data': <String, dynamic>{
              'click_action': 'FLUTTER_NOTIFICATION_CLICK',
              'id': '1',
              'status': 'done',
              'body': body,
              'message': title,
            },
            'notification': <String, dynamic>{
              'title': title,
              'body': body,
              "android_channel_id": "dbhspv",
            },
            'to': '$token',
          },
        ),
      );
      if(respone.statusCode == 200){
        print("sended");
      }
      else{
        print("error");
      }
    } catch (e){
      if(kDebugMode){
        print("error push notification");
      }
    }
  }
  late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  initinfo() {
    var androidInitialize = const AndroidInitializationSettings(
        '@mipmap/ic_launcher');
    var initializationsSettings = InitializationSettings(
        android: androidInitialize);
    flutterLocalNotificationsPlugin.initialize(initializationsSettings,
        onDidReceiveNotificationResponse: (
            NotificationResponse notificationResponse) async {
          final String? payload = notificationResponse.payload;
          if (notificationResponse.payload != null) {
            debugPrint('notification payload: $payload');
          }
        });
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async{
      print(".......onMessaging.......");
      print("onMessaging:${message.notification?.title}/${message.notification?.body}}");

      BigTextStyleInformation bigTextStyleInformation = BigTextStyleInformation(
        message.notification!.body.toString(),htmlFormatBigText: true,
        contentTitle: message.notification?.title.toString(),htmlFormatContentTitle: true,
      );
      AndroidNotificationDetails androidPlatformChannelSpecifies = AndroidNotificationDetails(
        'dbhsp','dbhsp', importance: Importance.high,
        styleInformation: bigTextStyleInformation,
        priority: Priority.high,
        playSound: true,
      );
      NotificationDetails platformChannelSpecifies = NotificationDetails(android: androidPlatformChannelSpecifies);
      await flutterLocalNotificationsPlugin.show(0, message.notification?.title,message.notification?.body, platformChannelSpecifies,
          payload: message.data['body']);
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initinfo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.background,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: AppTheme.colors.appbar,
        title:   Text('ACTIVE REQUESTS', style:GoogleFonts.arsenal(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white ),),
      ),


      body: Column(
        children: [


          // const SizedBox(
          //   height: 15,
          // ),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance.collection('order information')
                  .where('toHire', isEqualTo: user?.uid)
                  .where('status',isEqualTo:'accepted')
                  .snapshots(),
              builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasError) {
                  return Text('Something went wrong',style: TextStyle(color: AppTheme.colors.appbar));
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return  Center(child: Text("Loading",style: TextStyle(color: AppTheme.colors.appbar)),);
                }
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListView(
                    children: snapshot.data!.docs.map((DocumentSnapshot document) {
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
                            onTap: (){
                              showDialog(context: context, builder: (context){
                                return  Container(
                                  child: AlertDialog(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      backgroundColor: Colors.white,
                                      title: Text(
                                        'Order Completed',
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
                                         mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                          TextButton(onPressed: (){
                                            Navigator.pop(context,);
                                          },
                                              child:Text(
                                                'No',
                                                style:GoogleFonts.arsenal(
                                                    color: AppTheme.colors.appbar,),
                                              ),

                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          TextButton(onPressed: () async {
                                            String id = document.id;
                                            String order_id = document.get('id');
                                            String title = order_id;
                                            String token = document.get('token');


                                            if(document.get('status')=='accepted'){
                                              setState(() {
                                                FirebaseFirestore.instance.collection('order information')
                                                    .doc(id)
                                                    .update({"status" :"completed"});
                                              });


                                            }
                                            Navigator.pop(context);
                                            String body = 'Your Order is Completed, Share Your Review Please!';
                                            sendPushMessage(token, title, body);

                                          }, child: Text(
                                            'Mark Completed',
                                            style:GoogleFonts.arsenal(
                                              fontWeight: FontWeight.bold,
                                                color: Colors.blue,),
                                          ),)
                                        ],
                                      )

                                      ]
                                  ),
                                );

                              });
                            },
                            style: ListTileStyle.list,

                            dense: true,

                            title: Text("ORDER IN PROGRESS      ${document['order_date']}",style:GoogleFonts.arsenal(color: AppTheme.colors.appbar,fontWeight: FontWeight.bold,fontSize: 18),),
                            subtitle: Text('Tap to See Details',style:GoogleFonts.arsenal(fontStyle:FontStyle.italic, color: Colors.blue,fontSize: 18),),
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
                            tileColor: AppTheme.colors.background,
                          ),
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
