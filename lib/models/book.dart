class Book {
  final String title;
  final String author;
  final String description;
  bool isRead;

  Book({required this.title, required this.author, required this.description, this.isRead = false});
}