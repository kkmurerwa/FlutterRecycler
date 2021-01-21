import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'classes/quote.dart';

void main() => runApp(MaterialApp(
    home: QuoteList(),
  )
);

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  final Color colorPrimary = Colors.deepOrange[800];
  final Color colorPrimaryDark = Colors.red[900];
  final Color colorText =  Colors.white;
  final Color colorTextSecondary = Colors.grey[400];

  Widget quoteTemplate(quote){
    return Card(
      color: colorPrimary,
      margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 0),
      child: Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget> [
            Text(
              quote.quote,
              style: TextStyle(
                fontSize: 18,
                color: colorText,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: colorTextSecondary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Quote> quotes = [
      Quote(author: "Oscar Wilde", quote: "Be yourself; everybody else is already taken"),
      Quote(author: "Oscar Wilde", quote: "I have nothing to declare except my genius"),
      Quote(author: "Oscar Wilde", quote: "The truth is rarely pure and never simple"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        backgroundColor: colorPrimary,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: quotes.map((quote) {
          return quoteTemplate(quote);
        }).toList(),
      ),
    );
  }
}


