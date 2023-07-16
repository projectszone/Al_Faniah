import 'package:al_faniah/themes/colors_class.dart';
import 'package:al_faniah/widgets/back_button.dart';
import 'package:flutter/material.dart';

class DummyData extends StatelessWidget {
  const DummyData({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomBackButton(),
              SizedBox(height: 20,),
              Container(
                color: Pallete.backgroundColor,
                child: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              )
            ],
          ),
        )),
    );
  }
}