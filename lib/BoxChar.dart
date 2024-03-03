class BlokChar{
  String? text;
  String? correctText;
  int? index;
  bool isFocus = false;
  late bool isDefault;
  late bool isCorrect ;
  bool isExist = false;

  BlokChar(
      this.text, {
        this.index,
        this.isCorrect = false,
        this.isDefault = false,
        this.correctText,
      });

  //method used

  get isCorrectPos => correctText == text;
  setText(String text){
    this.text = text;
    isCorrect = isCorrectPos;
  }

  setEmpty(){
    this.text = "";
    isCorrect = false;
  }

}