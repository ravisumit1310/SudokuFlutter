import 'package:suduko/BoxChar.dart';

class BoxInner{
  late int index;
  List<BlokChar> blokchars = new list<BlokChar>.from([]);

  BoxInner(this.index, this.blokchars);

  setFocus(int index, Direction direction){
    List<BlokChar> temp;
    if(direction == Direction.Horizontal){
      temp = blokchars
          .where((element) => element.index! ~/ 3 == index ~/ 3)
          .toList();
    }else{
      temp = blokchars
          .where((element) => element.index! % 3 == index % 3)
          .toList();
    }

    temp.forEach((element) {
      element.isFocus = true;
    });

    setExistValue(int index, int indexBox, String textInput, Direction direction){

      List<BlokChar> temp;

      if(direction == Direction.Horizontal){
        temp = blokchars
            .where((element) => element.index! ~/ 3 == index ~/ 3)
            .toList();
      }else{
        temp = blokchars
            .where((element) => element.index! % 3 == index % 3)
            .toList();
      }

      if(this.index == indexBox){
        List<BlokChar> blokCharBox =
            blokchars.where((element) => element.text == textInput).toList();

        if(blokCharBox.length == 1 && temp.isEmpty) blokCharBox.clear();

        temp.addAll(blokCharBox);
      }

      temp.where((element) => element.text == textInput).forEach((element) {
        element.isExist = true;
      });
    }

    clearFocus(){
      blokchars.forEach((element) {
        element.isExist = false;
      });
    }

    clearExist(){
      blokchars.forEach((element) {
        element.isFocus = false;
      });
    }
  }
}

enum Direction{Horizontal, Vertical}