import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';

class Stories extends StatefulWidget {
  @override
  _StoriesState createState() => _StoriesState();
}

class _StoriesState extends State<Stories> {
  final storycontroller = StoryController();

  List<StoryItem> storyItemsList = [
    StoryItem.text(
      title: "CEYC end of year camp.. E go parp basaa",
      backgroundColor: Colors.blue[500],
    ), //story 1
    StoryItem.text(
      title: "Repping live.. what about you?",
      backgroundColor: Colors.deepOrange,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StoryView(
        storyItems: storyItemsList,
        controller: storycontroller,
        repeat: true,
        onComplete: () => print("STORY COMPLETED"),
      ),
    );
  }
}
