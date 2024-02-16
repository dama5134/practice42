import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Главный экран'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _navigateToColorScreen(context, Colors.red);
              },
              style: ElevatedButton.styleFrom(primary: Colors.red),
              child: Text('Красная'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _navigateToColorScreen(context, Colors.yellow);
              },
              style: ElevatedButton.styleFrom(primary: Colors.yellow),
              child: Text('Желтая'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                _navigateToColorScreen(context, Colors.blue);
              },
              style: ElevatedButton.styleFrom(primary: Colors.blue),
              child: Text('Синяя'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToColorScreen(BuildContext context, Color color) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ColorScreen(color: color),
      ),
    );
  }
}

class ColorScreen extends StatelessWidget {
  final Color color;

  ColorScreen({required this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Экран цвета'),
      ),
      body: Container(
        color: color,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Вернуться'),
          ),
        ),
      ),
    );
  }
}
