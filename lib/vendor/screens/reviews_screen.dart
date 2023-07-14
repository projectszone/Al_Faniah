import 'package:al_faniah/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class ReviewsScreen extends ConsumerStatefulWidget {
  const ReviewsScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ReviewsScreenState();
}

class _ReviewsScreenState extends ConsumerState<ReviewsScreen> {
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
                          RatingBarIndicator(
                            rating: 3,
                            itemBuilder: (context, index) => Icon(
                              Icons.star,
                            ),
                            itemCount: 5,
                            itemSize: 15.0,
                            direction: Axis.horizontal,
                          ),
                          Text("3"),
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
