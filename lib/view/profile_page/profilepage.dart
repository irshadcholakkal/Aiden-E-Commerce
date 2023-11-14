import 'package:aiden/view/profile_page/widget/listtile.dart';
import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({super.key});

  @override
  State<Profilepage> createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(20)),
                  child: const ListTile(
                    leading: SizedBox(),
                    title: Text("name"),
                    subtitle: Text("email"),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    listtile(
                        text: "Personal details",
                        leading: const Icon(Icons.abc),
                        trailing: Image.asset(
                          "assets/images/forwardicon.png",
                          height: 30,
                          width: 30,
                        )),
                    listtile(
                        text: "My Orders",
                        leading: const Icon(Icons.abc),
                        trailing: Image.asset(
                          "assets/images/forwardicon.png",
                          height: 30,
                          width: 30,
                        )),
                    listtile(
                        text: "My Favourites",
                        leading: const Icon(Icons.abc),
                        trailing: Image.asset(
                          "assets/images/forwardicon.png",
                          height: 30,
                          width: 30,
                        )),
                    listtile(
                        text: "Shipping Address",
                        leading: const Icon(Icons.abc),
                        trailing: Image.asset(
                          "assets/images/forwardicon.png",
                          height: 30,
                          width: 30,
                        )),
                    listtile(
                        text: "My Card",
                        leading: const Icon(Icons.abc),
                        trailing: Image.asset(
                          "assets/images/forwardicon.png",
                          height: 30,
                          width: 30,
                        )),
                    listtile(
                        text: " Settings",
                        leading: const Icon(Icons.abc),
                        trailing: Image.asset(
                          "assets/images/forwardicon.png",
                          height: 30,
                          width: 30,
                        )),
                  ],
                ),
              ),
            ),
            const SizedBox(
              child: Column(
                children: [],
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
