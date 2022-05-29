import 'package:flutter_refactor_case/view/home_page_view/model/car_model.dart';
import 'package:flutter_refactor_case/view/home_page_view/model/model_colors_model.dart';
import 'package:mobx/mobx.dart';
part 'home_page_view_model.g.dart';

class HomePageViewModel = _HomePageViewModelBase with _$HomePageViewModel;

abstract class _HomePageViewModelBase with Store {
  @observable
  int selectedImageIndex = 0;

  @action
  void changeImage(int index) {
    selectedImageIndex = index;
  }

  void buyBottonPressed() {
    print("Satın alım başarılı.");
  }
}
