import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Avaliable';
  } else {
    return 'Preview';
  }
}
