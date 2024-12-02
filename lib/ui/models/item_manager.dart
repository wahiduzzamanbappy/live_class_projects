import 'item.dart';

class ItemManager {
  final List<Item> _listOfItem = [];

  List<Item> get todoList => _listOfItem;

  void addItem(Item item) {
    _listOfItem.add(item);
  }

  void deleteItem(int index) {
    _listOfItem.removeAt(index);
  }
}