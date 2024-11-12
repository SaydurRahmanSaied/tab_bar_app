import 'package:flutter/material.dart';
import 'package:tab_bar_app/camera_page.dart';
import 'package:tab_bar_app/contact_page.dart';
import 'package:tab_bar_app/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, //number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Tab Bar", style: TextStyle(
            color: Colors.white,
          ),
          ),
            bottom: const TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.contacts,
                    color: Colors.white,
                  ),
                  text: "Contact",
                ),

                Tab(
                  icon: Icon(
                    Icons.camera,
                    color: Colors.white,
                  ),
                  text: "Camera",
                ),

                Tab(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ),
                  text: "Settings",
                ),
              ],
            )
        ),

        body: const TabBarView(
          children: [
            ContactPage(),
            CameraPage(),
            SettingsPage()
          ],
        ),
      ),

    );
  }
}
