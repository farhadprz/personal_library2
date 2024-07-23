import 'package:flutter/material.dart';
import 'package:personal_library2/models/book.dart';
import 'package:personal_library2/screens/book_details_screen.dart';

class BookCard extends StatelessWidget {
  final Book book;
  final VoidCallback onToggleReadStatus;

  const BookCard({super.key, required this.book, required this.onToggleReadStatus});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(16.0),
        title: Text(
          book.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            decoration: book.isRead ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text(book.description),
        trailing: Checkbox(
          value: book.isRead,
          onChanged: (bool? value) {
            onToggleReadStatus();
          },
          activeColor: Theme.of(context).colorScheme.secondary,
        ),
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => BookDetailsScreen(book: book,)));
        },
      ),
    );
  }
}
