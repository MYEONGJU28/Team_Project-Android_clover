import 'package:flutter/material.dart';

class StudentIdPage extends StatelessWidget {
  const StudentIdPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("학생증", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: const Image(
                image: AssetImage("assets/images/id_test_img.png"),
                width: 100,
                height: 100,
              ),
            ),
            Container(
              child: const Text(
                "학생증",
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              child: const Image(
                image: AssetImage("assets/images/id_test_cat.jpg"),
                width: 200,
                height: 200,
              ),
            ),
            Container(
              child: const Image(
                image: AssetImage("assets/images/id_test_logo.jpg"),
                width: 200,
                height: 40,
              ),
            ),
            Container(
              child: const Text(
                "학교: 동양미래대학교"
              ),
            ),
            Container(
              child: const Text(
                "학과: 컴퓨터소프트웨어공학과"
              ),
            ),
            Container(
              child: const Text(
                "학교: 동양미래대학교"
              ),
            ),
            Container(
              child: const Text(
                "학번: 20240000"
              ),
            ),
            Container(
              child: const Text(
                "이름: 김고양"
              ),
            ),
            Container(
              child: const Text(
                "생년월일: 20240101"
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              child: TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  print("로그아웃 버튼 클릭");
                },
                child: const Text("로그아웃"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
