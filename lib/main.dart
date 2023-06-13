import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
 List<Quote> quotes= [
 Quote(text: "Everything in moderation, including moderation", author: "Oscar Wilde"),
 Quote(text: "I can resist everything except temptation", author: "Oscar Wilde"),
 Quote(text: "True friends stab you in the front", author: "Oscar Wilde")
 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,               //map function cycles thru each item in list
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
    }
    )).toList(),
      ),
    );
  }
}
