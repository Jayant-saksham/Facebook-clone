import 'package:flutter/material.dart';
import 'package:facebookUI/Models/model.dart';
import 'package:facebookUI/Widgets/widget.dart';

class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key key, this.currentUser}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            Row(
              children: [
                ProfileAvatar(
                  imageUrl: currentUser.imageUrl,
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                      hintText: "What\'s on your mind?",
                    ),
                  ),
                ),
              ],
            ),
            const Divider(
              height: 10.0,
              thickness: 0.5,
            ),
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.videocam, color: Colors.red),
                    label: Text("Live"),
                  ),
                  const VerticalDivider(
                    width: 8,
                  ),
                  FlatButton.icon(
                    onPressed: () => print('Photo'),
                    icon: const Icon(
                      Icons.photo_library,
                      color: Colors.green,
                    ),
                    label: Text('Photo'),
                  ),
                  const VerticalDivider(width: 8.0),
                  FlatButton.icon(
                    onPressed: () => print('Room'),
                    icon: const Icon(
                      Icons.video_call,
                      color: Colors.purpleAccent,
                    ),
                    label: Text('Room'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
