import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../main.dart';

class RequestsScreen extends ConsumerStatefulWidget {
  final String title;
  RequestsScreen({super.key, required this.title});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RequestsScreenState();
}

class _RequestsScreenState extends ConsumerState<RequestsScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Text(
          'REVIEWS',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return ListTile(
                      style: ListTileStyle.drawer,
                      leading: CircleAvatar(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.blue,
                        child: Icon(
                          Icons.person,
                          size: 40,
                        ),
                      ),
                      subtitle: Text(
                        'reviews',
                        style: TextStyle(fontSize: 16),
                      ),
                      title: Text(
                        'Name',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black),
                      ),
                      trailing: Column(
                        children: [
                          SizedBox(
                            height: mq.height * 0.02,
                          ),
                        ],
                      ),

                      // tileColor: AppTheme.colors.background,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
