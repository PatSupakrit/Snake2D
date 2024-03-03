import 'package:Snake2D/game_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue, // ตั้งค่าสีพื้นหลัง
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background_image.jpg'), // เพิ่มภาพพื้นหลัง
            fit: BoxFit.cover, // ปรับขนาดภาพให้เต็มพื้นที่
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/snake_game.jpg'),
            SizedBox(height: 50.0),
            Text(
              'Snake2D',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.black,
                    offset: Offset(5.0, 5.0),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => GamePage()));
              },
              icon: Icon(Icons.play_circle_filled, color: Colors.white, size: 30.0),
              label: Text(
                "Start",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // ตั้งค่าสีปุ่ม
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), // ตั้งค่าขนาดของปุ่ม
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // ทำให้มีเส้นมนเรียบ
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
