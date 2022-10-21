import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: JankenPage(),
    );
  }
}

class JankenPage extends StatefulWidget {
  const JankenPage({super.key});

  @override
  State<JankenPage> createState() => _JankenPageState();
}

class _JankenPageState extends State<JankenPage> {
  String myHand = '✊';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('じゃんけん'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              myHand,
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    myHand = '✊';
                    print(myHand);
                    setState(() {
                      
                    });
                  },
                  child: Text('✊'),
                ),
                ElevatedButton(
                  onPressed: () {
                    myHand = '✌️';
                    print(myHand);
                    setState(() {
                      
                    });
                  },
                  child: Text('✌️'),
                ),
                ElevatedButton(
                  onPressed: () {
                    myHand = '🖐';
                    print(myHand);
                    setState(() {
                      
                    });
                  },
                  child: Text('🖐'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}