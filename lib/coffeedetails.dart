import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeDetails extends StatefulWidget {
  final Coffee coffee;
  const CoffeeDetails({
    Key? key,
    required this.coffee,
  }) : super(key: key);

  @override
  _CoffeeDetailsState createState() => _CoffeeDetailsState();
}

class _CoffeeDetailsState extends State<CoffeeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.coffee.label),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image(
                image: AssetImage(widget.coffee.imageUrl),
              ),
            ),
            const SizedBox(
              height: 4
            ),
            Text(
              widget.coffee.label,
            ),
          ],
        ),
      ),
    );
  }
}
