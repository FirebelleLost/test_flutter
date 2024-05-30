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
      title: 'Lab3',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Lab3'),
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          Text("Browse Categories", style: TextStyle(fontSize: 50.0, color: Colors.black),),

          Row( mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Not sure exactly which recipe you're looking for? do a search, or dive into our most popular categories", style: TextStyle(fontSize: 20.0),),
            ],),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("By Meat", style: TextStyle(fontSize: 30.0),)
            ],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack( alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset("images/beef.jpg", width:150, height: 150),
                    Text("Beef", style: TextStyle(fontSize: 30.0),)
                  ]),
              Stack( alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset("images/chicken.jpg", width:150, height: 150),
                    Text("Chicken", style: TextStyle(fontSize: 30.0),)
                  ]),
              Stack( alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset("images/pork.jpg", width:150, height: 150),
                    Text("Pork", style: TextStyle(fontSize: 30.0),)
                  ]),
              Stack( alignment: Alignment.center,
                  children: <Widget>[
                    Image.asset("images/seafood.jpg", width:150, height: 150),
                    Text("Seafood", style: TextStyle(fontSize: 30.0),)
                  ]),
            ],
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("By Course", style: TextStyle(fontSize: 30.0),)
            ],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack( alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset("images/mainDish.jpg", width:150, height: 150),
                    Text("Main Dishes", style: TextStyle(fontSize: 30.0),)
                  ]),
              Stack( alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset("images/saladRexipes.jpg", width:150, height: 150),
                    Text("Salad Recipes", style: TextStyle(fontSize: 30.0),)
                  ]),
              Stack( alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset("images/sideDish.jpg", width:150, height: 150),
                    Text("Side Dishes", style: TextStyle(fontSize: 30.0),)
                  ]),
              Stack( alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset("images/Crockpot.jpg", width:150, height: 150),
                    Text("Crockpot", style: TextStyle(fontSize: 30.0),)
                  ]),
            ],
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("By Dessert", style: TextStyle(fontSize: 30.0),)
            ],),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack( alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset("images/icecream.jpg", width:150, height: 150),
                    Text("Ice Cream", style: TextStyle(fontSize: 30.0),)
                  ]),
              Stack( alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset("images/brownie.jpg", width:150, height: 150),
                    Text("Brownies", style: TextStyle(fontSize: 30.0),)
                  ]),
              Stack( alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset("images/pie.jpg", width:150, height: 150),
                    Text("Pies", style: TextStyle(fontSize: 30.0),)
                  ]),
              Stack( alignment: Alignment.bottomCenter,
                  children: <Widget>[
                    Image.asset("images/cookie.jpg", width:150, height: 150),
                    Text("Cookies", style: TextStyle(fontSize: 30.0),)
                  ]),
            ],
          )

        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

}
