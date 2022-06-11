import 'package:flutter/material.dart';
import 'coffee.dart';

void main() {
  runApp(const CoffeeApp());
}

class CoffeeApp extends StatelessWidget {
  const CoffeeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = ThemeData();

    return MaterialApp(
      title: 'Coffee App',
      theme: theme.copyWith(
        brightness: Brightness.dark,
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.black,
          secondary: Colors.grey,
        ),
      ),
      home: const MyHomePage(title: 'Coffee of the Day'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
            child: ListView.builder(
                itemCount: Coffee.samples.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context){
                            return Text('New Page');
                          },
                        ),
                      ); // Naviagator Push
                    },
                      child:buildCoffeeCard(Coffee.samples[index]),
                  );
                },
                )
        )
    );
  }

  Widget buildCoffeeCard(Coffee coffee) {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 5/3,
              child:Image(
                image: AssetImage(coffee.imageUrl),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(coffee.label,
              style: const TextStyle(
                fontSize:20.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Montserrat',
              ),
            ),
            Text(coffee.intensity,
                style: const TextStyle(
                  fontSize:16.0,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Montserrat',
                )),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      )
    );
  }
}
