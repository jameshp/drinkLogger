import 'model.dart';
import 'package:polymer/polymer.dart';

import 'dart:html';
import 'dart:convert';

@CustomTag('drink-list')
class DrinkList extends PolymerElement{
  
  @observable List<Drink> drinks = toObservable([]);
  
  /// Path to the JuiceFinder configuration file.
  /// If no value is provided it defaults to juiceFinder.config.json.
  @published String url = "juiceFinder.config.json";
  
  @observable bool phoneScreen;
  
  /// Constructor used to create instance of DrinkList.
  DrinkList.created() : super.created() {
    loadDrinks();
    
  }
  
  loadDrinks(){
    window.console.debug("Loading Drinks from '" + url + "'.");
    HttpRequest.getString(url).then(processDrinks).catchError(handleConfigurationError);
  }
  
  processDrinks(String value) {
    Map DrinkJSON = JSON.decode(value);
    DrinkJSON["drinks"].forEach((i) => addDrinks(i));//window.console.debug("debug:" + i ));// + ","+ i["consumptionDate"] +","+  i["notes"]));
    //drinks.add(new Drink("ba",1,"bla","notes"));
    //DrinkJSON["drinks"].forEach((i) => drinks.add(new Drink(i["type"],i["count"],i["consumptionDate"],i["notes"])));
  }
  //=> i["drinks"].forEach((j)   
  /// TODO add handling errors while loading the configuration
  handleConfigurationError() {
  
  }
  
  addDrinks(Map i){
    drinks.add(new Drink(i["type"],i["count"],i["consumptionDate"],i["notes"]));
    return i; 
  }
  
  
  
  
  
}
