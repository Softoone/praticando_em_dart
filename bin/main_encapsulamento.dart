import 'package:praticando_poo/poo_encapsulamento/book.dart';
import 'package:praticando_poo/poo_encapsulamento/person.dart';


void main(List<String> arguments) {
  List<Person> people = [];
  List<Book> books = [];

  people.add(Person(age: 22, gender: "Male", name: "Peter"));
  people.add(Person(age: 25, gender: "Female", name: "Mary"));

  books.add(Book(author: "da Silva, Joseph", title: "Learning Java", owner: people.first, numberOfPages: 300));
  books.add(Book(author: "Taylor, Paul", title: "OOP for Dummies", owner: people.last, numberOfPages: 500));
  books.add(Book(author: "Chandelier, Marie", title: "Java: 0 to Hero", owner: people.first, numberOfPages: 800));

  for (var i = 0; i < books.length; i++) {
    books.first.nextPage();
    books[1].prevPage();
    books.last.flickThrough(105);
    print(books[i].description());
    books.first.owner.happyBirthday();
  }

}
