import 'package:flutter/material.dart';
import 'quote.dart';
void main()=>runApp(MaterialApp(
  home: QuoteList(),
));
class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [ //type of data in  the List is Quote
    Quote(author: 'nimesh', text: 'galahitiyawa' ),
    Quote(author: 'thisara', text: 'ganemulla'),
    Quote(author: 'ranatunge', text: 'sri lanka'), // cycling through out of data
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Áwesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          quotes.map((quote) => Text(quote.text + ' ' +quote.author, textScaleFactor: 1.5,)).toList(),
          //code ninja used Text('${quote.text} - ${quote.author}')).toList(),
        ),
      ),
    );
  }
}
