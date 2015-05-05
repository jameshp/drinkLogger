import 'dart:html';
import 'model.dart';

import 'package:paper_elements/paper_item.dart';
import 'package:polymer/polymer.dart';

/// A Polymer `<ingredient-element>` element.
@CustomTag('drink-element')
class DrinkElement extends PolymerElement {
  @published Drink drink;
  @observable bool editing = false;
  @observable bool phoneScreen = false;
  
  /// Constructor used to create instance of MainApp.
  DrinkElement.created() : super.created();

  void editItem(Event e, var detail, Node target){
    editing = !editing;
  }
  /*
  void fireSelectIngredient(Event e, var detail, PaperItem target) {
    //toggle to change icon style;
    selected = !selected;  
    if (selected){
      fire('ingredientselected', detail: {'ingredient': target.id});//provide the ingredient name in the detail
    }
    else{
      fire('ingredientremoved', detail: {'ingredient': target.id});
    }
    //target.querySelector('paper-icon-button').setAttribute("class", "selected");
  }
  */
  
}