import 'package:praticando_poo/poo_encapsulamento/person.dart';
import 'package:praticando_poo/poo_encapsulamento/publication.dart';

class Book implements Publication {
  String title;
  String author;
  int numberOfPages;
  late int currentPage;
  late bool isOpen;
  Person owner;

  Book({
    required this.author,
    required this.title,
    required this.owner,
    required this.numberOfPages,
  }) {
    isOpen = false;
    currentPage = 0;
  }

  String description() {
    return '''
Title: $title
Author: $author
Total of pages: $numberOfPages
Current page: $currentPage
Is open: ${isOpen ? 'Yes' : 'No'}
Owned by: ${owner.name}

''';
  }

  @override
  void close() {
    isOpen = false;
  }

  @override
  void flickThrough(int page) {
    open();
    if (page <= numberOfPages) {
      currentPage = page;
      return;
    }
    print('The max number of pages for this book is $numberOfPages');
  }

  @override
  void nextPage() {
    if (currentPage == numberOfPages && isOpen) {
      print("You're already in the last page of this book");
      return;
    }
    currentPage++;
  }

  @override
  void open() {
    isOpen = true;
  }

  @override
  void prevPage() {
    if (currentPage == 0 && isOpen) {
      print("You're already in the first page of this book");
      return;
    }
    currentPage--;
  }
}
