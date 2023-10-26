// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'news_book_cubit_cubit.dart';

abstract class NewsBookCubitState extends Equatable {
  const NewsBookCubitState();

  @override
  List<Object> get props => [];
}

final class NewsBookCubitInitial extends NewsBookCubitState {}

class NewsBooksLoading extends NewsBookCubitState {}

class NewsBooksFailure extends NewsBookCubitState {
  final String message;
  const NewsBooksFailure(
    this.message,
  );
}

class NewsBooksSuccess extends NewsBookCubitState {
  final List<BookModel> books;
  const NewsBooksSuccess(
    this.books,
  );
}
