import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Team Clover", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const SizedBox(
              height: 100,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'MENU',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Text('학생증'),
              onTap: () {
                Navigator.pushNamed(
                  context, '/id'
                );
              },
            ),
            ListTile(
              title: const Text('중고거래'),
              onTap: () {
                Navigator.pushNamed(
                    context, '/trade'
                );
              },
            ),
            ListTile(
              title: const Text('커뮤니티'),
              onTap: () {
                Navigator.pushNamed(
                    context, '/comunity'
                );
              },
            ),
            ListTile(
              title: const Text('예약'),
              onTap: () {
                Navigator.pushNamed(
                    context, '/reserve'
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: const Image(
                image: AssetImage("assets/images/team_clover_logo.png"),
                width: 250,
                height: 250,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/login'
                  );
                },
                child: const Text("로그인"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, '/signup'
                  );
                },
                child: const Text("회원 가입"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}