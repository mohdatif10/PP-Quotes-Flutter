import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                quote.text,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18,
                )
            ),
            SizedBox(height: 6.0),
            Text(
                quote.author,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 14,
                )
            ),
            SizedBox(height: 8,),
            TextButton.icon(
              onPressed: () => delete(),
              label: Text('Delete Quote'),
              icon: Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}