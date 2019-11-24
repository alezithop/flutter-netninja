import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() =>
    runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(
        author: 'Jill Valentine', text: 'You know how to keep a girl waiting'),
    Quote(author: 'Chris Redfield', text: 'You still have the touch'),
    Quote(author: 'Claire Redfield', text: 'Are you a police officer?')
  ];

/*  Widget quoteTemplate(quote) {
    return QuoteCard(quote: quote);
  }*/

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
          children: quotes.map((quote) =>
          QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotes.remove(quote);
              });
            },)).toList(),
    ),);
  }
}