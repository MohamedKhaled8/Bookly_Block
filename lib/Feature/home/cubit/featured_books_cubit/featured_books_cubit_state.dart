part of 'featured_books_cubit_cubit.dart';

//1-load Data
//2-Succes Data
//3-Error Data
abstract class FeaturedBooksCubitState extends Equatable {
  const FeaturedBooksCubitState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksCubitInitial extends FeaturedBooksCubitState {}

class FeaturedBooksLoading extends FeaturedBooksCubitState {}

class FeaturedBooksFailure extends FeaturedBooksCubitState {
  final String message;

  const FeaturedBooksFailure(this.message);
}

class FeaturedBooksSuccess extends FeaturedBooksCubitState {
  final List<BookModel> books;

  const FeaturedBooksSuccess(this.books);
}
