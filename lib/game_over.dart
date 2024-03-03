import 'package:Snake2D/game_page.dart';
import 'package:flutter/material.dart';

class GameOver extends StatelessWidget {
  final int score;

  GameOver({
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Game Over',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                shadows: [
                  Shadow(offset: Offset(-1.5, -1.5), color: Colors.black),
                  Shadow(offset: Offset(1.5, -1.5), color: Colors.black),
                  Shadow(offset: Offset(1.5, 1.5), color: Colors.black),
                  Shadow(offset: Offset(-1.5, 1.5), color: Colors.black),
                ],
              ),
            ),
            SizedBox(height: 50.0),
            Text(
              'Your Score is: $score',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            SizedBox(height: 50.0),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => GamePage()),
                );
              },
              icon: Icon(Icons.refresh, color: Colors.white, size: 30.0),
              label: Text(
                "Try Again",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
