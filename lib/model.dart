import 'package:polymer/polymer.dart';

class Drink extends Observable {
  static const List<String> TYPE
      = const ['Bier', 'Wein', 'Schnaps', 'Sekt'];
  static const MIN_TITLE_LENGTH = 10;
  static const MAX_TITLE_LENGTH = 30;
  static const MAX_DESCRIPTION_LENGTH = 140;
  @observable String type;
  @observable String consumptionDate;
  @observable int count; 
  @observable String notes;
  @observable User user = null;
  
  // Constructor.
  Drink(this.type,this.count,this.consumptionDate,this.notes);
  
  String toString(){
    return "$type $count $consumptionDate";
  }
}


class User extends Observable{
  @observable String userName;
  @observable String firstName;
  @observable String lastName;
  
  //Constructor
  User(this.userName,this.firstName,this.lastName);
  
  String toString(){
    return "$userName $firstName $lastName"; 
  }
}