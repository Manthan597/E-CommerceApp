import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'dashboard_controller.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key key}) : super(key: key);
  final loginPageController = Get.put(DashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: InkWell(
              onTap: () {},
              child: Icon(
                FontAwesomeIcons.list,
                color: Colors.grey,
              ),
            ),
            title: Row(
              children: [
                Icon(FontAwesomeIcons.search),
                SizedBox(
                  width: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Search",
                    labelStyle: TextStyle(color: Colors.black),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 2.0),
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.grey,
                ),
              )
            ],
            pinned: true,
          ),
        ],
      ),
    );
  }
}
