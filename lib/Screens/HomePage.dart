import 'package:flutter/material.dart';
import 'package:facebookUI/Config/Pallette.dart';
import 'package:facebookUI/Widgets/widget.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:facebookUI/Data/data.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: const TextStyle(
                color: Palette.facebookBlue,
                fontSize: 27,
                fontWeight: FontWeight.bold,
                letterSpacing: -0.7,
              ),
            ),
            floating: true,
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 30,
                onPressed: () => print("Search"),
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30,
                onPressed: () => print("Messenger"),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(
              currentUser: currentUser,
            ),
          )
        ],
      ),
    );
  }
}
