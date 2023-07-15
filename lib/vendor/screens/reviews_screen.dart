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
                        backgroundImage: NetworkImage(
                            'https://img.freepik.com/free-photo/bearded-young-man-wearing-shirt_273609-5938.jpg?w=900&t=st=1689429063~exp=1689429663~hmac=557a51a52060f429df2f04ff1fab081b83aa39dba17a5c1bb78cf0a2c2220e18'),
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
                              color: Colors.yellow,
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
