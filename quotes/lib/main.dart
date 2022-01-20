import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    home: QuotesList(),
  ));
}

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  _QuotesListState createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes = [ // Listing Maps
    Quote(author: 'Warren Buffet', text: 'We simply attempt to be fearful when others are greedy and to be greedy only when others are fearful'),
    Quote(author: 'Warren Buffet', text: 'Price is what you pay. Value is what you get'),
    Quote(author: 'Warren Buffet', text : 'Someone\'s sitting in the shade today because someone planted a tree a long time ago')
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Background Color of the screen
      appBar: AppBar(
        title: Text('Unique Quotes'), // Title of the app bar
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((e) => QuoteCard(
          quote: e,
          delete: () {  // Function to delete the quote
            setState(() {
              quotes.remove(e); // Finally it will remove the quote
            });
          }
        )).toList(), // e: we can pass any parameter in here | .map(): cycles through a list of data and fo reach items it gonna perform a function | return Text(e);
      ),
    );
  }
}
