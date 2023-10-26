import 'package:dartz/dartz.dart';
import 'package:bookleymvvm/Core/errors/error.dart';
import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category});
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(String query);
} // بحط الميثود بدون اي شئ اخر بحدد انا بعمل اي بس a