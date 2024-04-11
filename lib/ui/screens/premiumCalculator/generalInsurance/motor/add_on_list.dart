class AddOnList {
  String label;
  bool isChecked;
  int addOnId;
  bool? isNilExcess;
  bool? isMMK;

  AddOnList({
    required this.label,
    required this.isChecked,
    required this.addOnId,
    this.isNilExcess,
    this.isMMK,
  });
}