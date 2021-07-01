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
    Quote(author: 'ranatunge', text: 'sri lanka'),
  ];
  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 6.0,),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
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
          quotes.map((quote) => quoteTemplate(quote)).toList(),
          //code ninja used Text('${quote.text} - ${quote.author}')).toList(),
        ),
      ),
    );
  }
}
