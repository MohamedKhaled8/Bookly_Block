part of 'featch_search_books_cubit.dart';

abstract class FeatchSearchBooksState extends Equatable {
  const FeatchSearchBooksState();

  @override
  List<Object> get props => [];
}

final class FeatchSearchBooksInitial extends FeatchSearchBooksState {}
class SearchBooksLoading extends FeatchSearchBooksState {}

class SearchBooksFailure extends FeatchSearchBooksState {
  final String message;

  const SearchBooksFailure(this.message);
}

class SearchBooksSuccess extends FeatchSearchBooksState {
  final List<BookModel> books;

  const SearchBooksSuccess(this.books);
}