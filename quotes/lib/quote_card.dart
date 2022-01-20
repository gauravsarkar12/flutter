import 'package:flutter/material.dart';
import 'quote.dart';


final delBtn = const Color(0xFFB4161B); // Custom Color

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final VoidCallback delete; // Replaced Function by VoidCallback
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
                ElevatedButton.icon( // Icon function
                    onPressed: delete,
                    icon: Icon(Icons.delete_outline), // Icon outlet
                    label: Text('Delete'),  // Label
                  style: ElevatedButton.styleFrom(  // Button color change
                    primary: Colors.white, // background
                    onPrimary: delBtn, // foreground
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
