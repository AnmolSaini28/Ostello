class Course {
  final String title;
  final String instructor;
  final String language;
  final String price;
  final bool isLive;
  final String imageUrl;

  Course({
    required this.title,
    required this.instructor,
    required this.language,
    required this.price,
    this.isLive = false,
    required this.imageUrl,
  });
}
