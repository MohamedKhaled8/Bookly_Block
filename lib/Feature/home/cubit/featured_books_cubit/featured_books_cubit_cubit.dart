import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookleymvvm/Feature/home/data/repos/home_repo.dart';
import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

part 'featured_books_cubit_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksCubitState> {
  FeaturedBooksCubit(
    this.homeRepo,
  ) : super(FeaturedBooksCubitInitial());

  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
    }, (books) {
      emit(FeaturedBooksSuccess(books));
    });
  }
}
