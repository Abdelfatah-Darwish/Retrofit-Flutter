import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:retrofit_flutter/jsontodartmodel/user.dart';
import 'package:retrofit_flutter/repos/my_repo.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo;
  MyCubit(this.myRepo) : super(MyInitial());

//exaplan this fiel in chatGpt.
  void emitGetAllUsers() {
    myRepo.getAllUsers().then((usersList) {
      emit(GetAllUsers(usersList));
    });
  }
}
