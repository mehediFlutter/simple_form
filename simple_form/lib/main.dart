import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle buttonStyle = OutlinedButton.styleFrom(
      minimumSize: Size(double.infinity, 50),
      backgroundColor: Color.fromARGB(255, 160, 208, 247),
      shadowColor: Colors.redAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Simple Form'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'First Name'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Last Name'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'password'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: OutlinedButton(
              onPressed: () {},
              child: Text('Submit'),
              style: buttonStyle,
            ),
          ),

          //Here
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              textAlign: TextAlign.center,
              readOnly: true,

              // We can use "readOnly: true " for only read the text ok?
              decoration: InputDecoration(
                hintText: 'I Am Only Read',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) {
                // when we cleck on then the value we enter textfild that show in our console it's very interisting
                print(value);
              },
            ),
          ),
        ],
      ),
    );
  }
}
