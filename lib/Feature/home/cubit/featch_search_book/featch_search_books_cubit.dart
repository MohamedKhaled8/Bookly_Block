import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookleymvvm/Feature/home/data/repos/home_repo.dart';
import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';

part 'featch_search_books_state.dart';

class FeatchSearchBooksCubit extends Cubit<FeatchSearchBooksState> {
  FeatchSearchBooksCubit(
    this.homeRepo,
  ) : super(FeatchSearchBooksInitial());

  final HomeRepo homeRepo;
  Future<void> searchBooks(String query) async {
    emit(SearchBooksLoading());
    final result = await homeRepo.fetchSearchBooks(query);
    emit(result as FeatchSearchBooksState);
    result.fold((failure) {
      emit(SearchBooksFailure(failure.message));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}
