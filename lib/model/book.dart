import 'package:navoiy_app/model/detail_model.dart';
import 'package:navoiy_app/ui/second_screen.dart';

class Book {
  String asset;
  String title;
  String author;

  Book(this.asset, this.title, this.author);
}

List<Book> books = [
  Book('assets/images/owl.png', 'Xamsa 1-tom', '  '),
  Book('assets/images/owl.png', 'Xamsa 2-tom', ''),
  Book('assets/images/owl.png', 'Xamsa 3-tom', ''),
  Book('assets/images/owl.png', 'Xamsa 4-tom', ''),
  Book('assets/images/owl.png', 'Xamsa 5-tom', ''),
];

