import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:bookleymvvm/Feature/home/data/repos/home_repo.dart';
import 'package:bookleymvvm/Feature/home/data/model/book_model.dart';
// ignore_for_file: public_member_api_docs, sort_constructors_first

part 'news_book_cubit_state.dart';

class NewsBookCubit extends Cubit<NewsBookCubitState> {
  NewsBookCubit(
    this.homeRepo,
  ) : super(NewsBookCubitInitial());
  final HomeRepo homeRepo;
  Future<void> fetchNewestBooks() async {
    emit(NewsBooksLoading());
    var result = await homeRepo.fetchNewsetBooks();
    result.fold((failure) {
      emit(NewsBooksFailure(failure.message));
    }, (books) {
      emit(NewsBooksSuccess(books));
    });
  }
}
