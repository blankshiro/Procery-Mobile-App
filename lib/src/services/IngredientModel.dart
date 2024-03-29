import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../models/Ingredient.dart';

class IngredientModel with ChangeNotifier {
  String _ingredientBox = 'ingredient';

  List _ingredientList = <Ingredient>[];

  List get ingredientList => _ingredientList;

  addItem(Ingredient ingredient) async {
    var box = await Hive.openBox<Ingredient>(_ingredientBox);

    box.add(ingredient);

    print('added ' + ingredient.name);

    getItem();

    notifyListeners();
  }

  getItem() async {
    final box = await Hive.openBox<Ingredient>(_ingredientBox);

    _ingredientList = box.values.toList();

    notifyListeners();
  }

  updateItem(int index, Ingredient ingredient) {
    final box = Hive.box<Ingredient>(_ingredientBox);

    box.putAt(index, ingredient);

    print('updated ' + ingredient.name);

    getItem();

    notifyListeners();
  }

  deleteItem(int index) {
    final box = Hive.box<Ingredient>(_ingredientBox);

    box.deleteAt(index);

    print('deleted');

    getItem();

    notifyListeners();
  }

  deleteAll() async{
    var box = await Hive.openBox<Ingredient>(_ingredientBox);
    while(box.isNotEmpty){
      box.delete(box.keyAt(0));
    }
    print('delete all -');
    print(box.length);

    getItem();

  }
}
