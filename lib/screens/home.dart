import 'package:flutter/material.dart';
import 'calls.dart';
import 'camera.dart';
import 'chat.dart';
import 'status.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        setState(() {
          // ignore: unused_local_variable
          var showFloatingButton = true;
        });
      } else {
        setState(() {
          // ignore: unused_local_variable
          var showFloatingButton = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool showFloatingButton = true;
        return Scaffold(
            appBar: AppBar(
              title: Text('WhatsApp'),
              elevation: 0.5,
              bottom: TabBar(
                controller: _tabController,
                indicatorColor: Colors.white,
                tabs: [
                  Tab(icon: Icon(Icons.camera_alt)),
                  Tab(text: 'CHATS'),
                  Tab(text: 'STATUS'),
                  Tab(text: 'CALLS'),
                ],
              ),
              actions: [
                Icon(Icons.search),
                Padding(padding: const EdgeInsets.symmetric(horizontal: 5)),
                Icon(Icons.more_vert),
              ],
            ),
            body: TabBarView(
              controller: _tabController,
              children: [
                CameraScreen(),
                ChatScreen(),
                StatusScreen(),
                CallsScreen(),
              ],
            ),
            floatingActionButton: showFloatingButton ? FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          child: Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () => print('open chats'),
        ): null
        );
  }
}
