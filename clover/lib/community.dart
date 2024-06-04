import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("커뮤니티", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: const Image(
                  image: AssetImage("assets/images/community_logo.png"),
                width: 70,
                height: 70
              )
            ),
            const SearchBar(
                trailing: [Icon(Icons.search)],
                constraints: BoxConstraints(maxWidth: 300, minHeight: 50)
            ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              width: 300,
              height: 50,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10),
              ),
                child: const Text("커뮤니티 글 1")
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                width: 300,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text("커뮤니티 글 2")
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                width: 300,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text("커뮤니티 글 3")
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                width: 300,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text("커뮤니티 글 4")
            ),
            Container(
                margin: const EdgeInsets.only(top: 20),
                width: 300,
                height: 50,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text("커뮤니티 글 5")
            ),
          ],
        ),
      ),
    );
  }
}
