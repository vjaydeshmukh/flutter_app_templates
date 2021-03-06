import 'package:mobx/mobx.dart';
import '../constants/enums.dart';

part 'destinations_store.g.dart';

class DestinationsStore = DestinationsStoreBase with _$DestinationsStore;

abstract class DestinationsStoreBase with Store {
  static const List<Destination> destinations = Destination.values;

  @observable
  Destination selectedDestination = Destination.Home;

  @action
  void selectDestination(Destination destination) {
    selectedDestination = destination;
  }
}
