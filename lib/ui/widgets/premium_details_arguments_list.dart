class PremiumDetailsArguments {
  final String title;
  final bool isMMK;
  final String appBarIcon;
  final List<AddOnList>? addOnList;
  final bool? isStampFee;

  PremiumDetailsArguments({
    required this.title,
    required this.isMMK,
    required this.appBarIcon,
    this.addOnList,
    this.isStampFee
  });
}