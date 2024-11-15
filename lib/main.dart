import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFFFFC107),
        scaffoldBackgroundColor: Color(0xFFFEF7FF),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFFFFC107),
        ),
        iconTheme: IconThemeData(
          color: Color(0xFF1D005A),
        ),
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildProfileItem(context, Icons.icecream_outlined,
                "Ice cream is very delicious right?"),
            SizedBox(height: 35),
            buildProfileItem(context, Icons.code,
                "Programming is not boring if you love it"),
            SizedBox(height: 35),
            buildProfileItem(context, Icons.egg_outlined,
                "If you submit code directly copy from chatgpt then mark will 0"),
          ],
        ),
      ),
    );
  }

  Widget buildProfileItem(BuildContext context, IconData icon, String text) {
    return Column(
      children: [
        CircleAvatar(
          radius: 75,
          backgroundColor: Color(0xFFEADDFF),
          child: Icon(
            icon,
            color: Theme.of(context).iconTheme.color,
            size: 90,
          ),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
