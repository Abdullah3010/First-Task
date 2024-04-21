class ENHomeMainItem {
  final String image;
  final String title;
  final String description;
  final String? route;
  final Function()? onTap;

  ENHomeMainItem({
    required this.image,
    required this.title,
    required this.description,
    this.route,
    this.onTap,
  });
}
