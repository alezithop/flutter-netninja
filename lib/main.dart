import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'September 28th, day light..',
    'We can cover more ground separatelly..',
    'You know how to keep a girl waiting..'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
       /* children: quotes.map((quote){
          return Text(quote);
        }).toList(),*/
       children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}