import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookleymvvm/Feature/home/data/repos/home_repo.dart';
import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(
    this.homeRepo,
  ) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) => emit(SimilarBooksFailure(failure.message)),
        (books) => emit(SimilarBooksSuccess(books)));
  }
}
