import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _controller;
  late TextEditingController _pwcontroller;
  var picture = "images/question-mark.png";

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();

    _pwcontroller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();

    _pwcontroller.dispose();
    super.dispose();
  }

  void buttonClicked() {
    String password = _pwcontroller.value.text;

    setState(() {
      if (password == "QWERTY123") {
        picture = "images/idea.png";
      } else {
        picture = "images/stop.png";
      }
    });
  }

  var isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
                controller: _controller,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Login")),
            TextField(
                controller: _pwcontroller,
                obscureText: true,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password")),
            ElevatedButton(
              onPressed: buttonClicked,
              child: const Text("Login"),
            ),
            Image.asset(picture, width: 200, height: 200),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
