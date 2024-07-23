import 'package:flutter/material.dart';
import 'package:personal_library2/screens/add_book_screen.dart';
import 'package:personal_library2/widgets/custom_app_bar.dart';
import 'package:personal_library2/widgets/custom_navigation_bar.dart';

import '../models/book.dart';
import '../widgets/book_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Book> _books = [
    Book(title: "1984", author: "George Orwell", description: "A dystopian novel."),
    Book(title: "To Kill a Mockingbird", author: "Harper Lee", description: "A novel about racial injustice."),
    Book(title: "Moby-Dick", author: "Herman Melville", description: "A story about a giant whale."),
    Book(title: "To Kill a Mockingbird", author: "Harper Lee", description: "A novel about racial injustice."),
    Book(title: "1984", author: "George Orwell", description: "A dystopian novel."),
    Book(title: "Moby-Dick", author: "Herman Melville", description: "A story about a giant whale."),
  ];

  void _addBook(Book book) {
    setState(() {
      _books.add(book);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: CustomAppBar(
          title: 'Library',
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemBuilder: (context, index) => BookCard(
          book: _books[index],
          onToggleReadStatus: () {
            setState(() {
              _books[index].isRead = !_books[index].isRead;
            });
          },
        ),
        itemCount: _books.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final result = await showModalBottomSheet(
            context: context,
            isScrollControlled: true, // Consider setting this parameter to true if this bottom sheet has
                                      // a scrollable child, such as a [ListView] or a [GridView], to have the bottom sheet be draggable.
            builder: (context) => const AddBookScreen(),
          );
          if(result != null){
            _addBook(result);
          }
        },
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: const CustomBottomNavBar(),
    );
  }
}
