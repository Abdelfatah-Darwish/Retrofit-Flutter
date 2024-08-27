import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:retrofit_flutter/model/user.dart';
import 'package:retrofit_flutter/repository/my_repo.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo;
  MyCubit(this.myRepo) : super(MyInitial());


  void emitGetAllUsers() {
    myRepo.getAllUsers().then((allUsersList) {
      emit(GetAllUsers(allUsersList));
    });
  }
}

//explanation of this line ----->>>    myRepo.getAllUsers().then((allUsersList)
//Handle Data: When the data fetching operation completes successfully,
// the then callback is executed with the fetched data (allUsersList)