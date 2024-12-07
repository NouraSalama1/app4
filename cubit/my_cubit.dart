import 'package:app4/Users.dart';
import 'package:app4/repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'my_state.dart';

class MyCubit extends Cubit<MyState> {
  final MyRepo myRepo;
  MyCubit(this.myRepo) : super(MyInitial());
  void emitGetAllUsers(){
    myRepo.getAllusers().then((usersList){
      emit(GetAllUsers(usersList));
    });
  }
}


