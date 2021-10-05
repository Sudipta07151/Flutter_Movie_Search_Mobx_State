enum CheckBoxItemList {
  movies,
  series,
}

class CheckBoxItems {
  bool value;
  CheckBoxItemList item;
  CheckBoxItems({required this.value, required this.item});
}
