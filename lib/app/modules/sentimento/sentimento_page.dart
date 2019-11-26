import 'package:flutter/material.dart';

class SentimentoPage extends StatefulWidget {
  final String title;
  const SentimentoPage({Key key, this.title = "Sentimento"}) : super(key: key);

  @override
  _SentimentoPageState createState() => _SentimentoPageState();
}

class _SentimentoPageState extends State<SentimentoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
