import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white24,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.lock,
                  size: 60.0,
                  color: Colors.black38,
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "กรุณาใส่รหัสผ่าน",
                    style: TextStyle(fontSize: 20.0, color: Colors.black38),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton(1),
                    _buildButton(2),
                    _buildButton(3),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton(4),
                    _buildButton(5),
                    _buildButton(6),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildButton(7),
                    _buildButton(8),
                    _buildButton(9),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 75.0,
                      height: 75.0,
                    ),
                    _buildButton(0),
                    Container(
                        width: 75.0,
                        height: 75.0,
                        child: Icon(
                          Icons.backspace,
                          size: 30.0,
                          color: Colors.black38,
                        ))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child:
                  TextButton(onPressed: () {}, child: Text('ลืมรหัสผ่าน')),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget _buildButton(int? num) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: InkWell(
      onTap: () {
        print('$num');
      },
      child: Container(
        width: 75.0,
        height: 75.0,
        child: Center(child: Text('$num')),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black38, width: 4.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
              )
            ]),
      ),
    ),
  );
}