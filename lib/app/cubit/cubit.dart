import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:your_corner/data/local/cache_helper.dart';
import 'package:your_corner/data/remote/dio_helper.dart';
import 'package:your_corner/util/constants.dart';
import 'state.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialStates());

  static AppCubit get(context) => BlocProvider.of(context);

  String lang = 'en';
  int currentLangIndex = 0;

  void getAppLang() {
    if (CacheHelper.getString(key: PREF_LANG_KEY) == null) {
      print('Language is null');
      CacheHelper.setData(key: PREF_LANG_KEY, value: 'en')
          .then((value) => {
            lang = 'en'
      });
    } else {
      print('Language is not null: ${CacheHelper.getString(key: PREF_LANG_KEY)}');
      lang = CacheHelper.getString(key: PREF_LANG_KEY)!;
    }
  }

  void changeAppLang() {
    if (lang == 'ar') {
      lang = 'en';
      currentLangIndex = 1;
    } else {
      lang = 'ar';
      currentLangIndex = 0;
    }
    CacheHelper.setData(key: PREF_LANG_KEY, value: lang).then((value) {
      DioHelper.init();
      emit(AppChangeLanguageState());
    });
  }
}
