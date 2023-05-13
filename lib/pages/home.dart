// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ui/pages/pageone.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: getappbar(title: 'Home'),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView(
            children: [
              ListTile(
                title: getrow1(name: 'Page One ', prefixicon: Icons.info),
                onTap: () {
                  Navigator.pushNamed(context, 'firstpage');
                },
              ),
              ListTile(
                title: getrow1(name: 'Page Two ', prefixicon: Icons.home),
                onTap: () {
                  Navigator.pushNamed(context, 'secondpage');
                },
              ),
              ListTile(
                title: getrow1(
                    name: 'Page Three ', prefixicon: Icons.currency_rupee),
                onTap: () {
                  Navigator.pushNamed(context, 'thirdpage');
                },
              ),
              ListTile(
                title: getrow1(
                    name: 'Page Four ',
                    prefixicon: Icons.production_quantity_limits_sharp),
                onTap: () {
                  Navigator.pushNamed(context, 'fourthpage');
                },
              ),
              ListTile(
                title: getrow1(name: 'Page Five  ', prefixicon: Icons.shop_2),
                onTap: () {
                  Navigator.pushNamed(context, 'fifthpage');
                },
              ),
              ListTile(
                title: getrow1(
                    name: 'Page Six ',
                    prefixicon: Icons.workspace_premium_outlined),
                onTap: () {
                  Navigator.pushNamed(context, 'sixthpage');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Row getrow1({
  required String name,
  required IconData prefixicon,
}) {
  return Row(
    children: [
      Icon(
        prefixicon,
        color: Color.fromARGB(255, 105, 150, 240),
      ),
      SizedBox(
        width: 50,
      ),
      Text(
        name,
        style: TextStyle(fontSize: 20),
      ),
    ],
  );
}
