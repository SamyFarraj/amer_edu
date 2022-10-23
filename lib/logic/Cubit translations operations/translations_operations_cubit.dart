import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import '../../api/model/translations model.dart';
import '../../constant/constant string.dart';

part 'translations_operations_state.dart';

class TranslationsOperationsCubit extends Cubit<TranslationsOperationsState> {
  TranslationsOperationsCubit() : super(TranslationsOperationsInitial());



  static TranslationsOperationsCubit get(context) {
    return BlocProvider.of(context);

  }

  printmy()
  {
    print("jejflksjfkjsdklf");
  }
  Future <Object> getTranslations(String language) async
  {
    print("helllllo");
    emit(GetTranslationsStatus());
    var response = await http.get(
        Uri.parse('${baseUrl}api/$language'),
        headers: <String, String>
        {
          'Accept':'application/json'
        }
    );

    print("${response.statusCode}");

    if (response.statusCode == 200) {
    List< TranslationsResponse> translationsResponse=translationsResponseFromJson(response.body);
      print("${translationsResponse.toList()}");
    print("${translationsResponse.toString()}");
    print("${translationsResponse.toSet()}");

    emit(SuccessGetTranslationsStatus());
      emit(RefreshLevelStatus());

      // return jsonDecode(response.body)['access_token'];
      return 'yes';
    } else {
      emit(FieldGetTranslationsStatus());
      emit(RefreshLevelStatus());
      return 'fail';
    }
  }

}
