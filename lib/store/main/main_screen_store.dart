import 'package:mobx/mobx.dart';

part 'main_screen_store.g.dart'; 


class MainScreenStore = MainScreenStoreBase with _$MainScreenStore;

abstract class MainScreenStoreBase with Store {
  @observable
  int currentIndex = 0;

  @action
  void setIndex(int value) {
    currentIndex = value;
  }
}
