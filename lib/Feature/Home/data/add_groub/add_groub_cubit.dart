import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:meta/meta.dart';

part 'add_groub_state.dart';

class AddGroubCubit extends Cubit<AddGroubState> {
  AddGroubCubit() : super(AddGroubInitial());

  Future sendgroub(
      {required String desc,
      required String price,
      required String imagepath,
      required String pId}) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference groub = firestore.collection('groub');
    emit(AddGroubLoading());
    try {
      await groub.add({
        'desc': desc,
        "price": price,
        "imagePath": imagepath,
        "pId": groub.doc().id,
      });
      emit(AddGroubSuccess());
    } on Exception catch (e) {
      emit(AddGroubFailure(errmessage: e.toString()));
    }
  }
}
