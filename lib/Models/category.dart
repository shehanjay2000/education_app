class Category {
  String coverImage;
  String name;
  int noOfCourses;

  Category({
    required this.name,
    required this.noOfCourses,
    required this.coverImage,
  });
}

List<Category> categoryList = [
  Category(
    name: 'App Development',
    noOfCourses: 55,
    coverImage: 'assets/images/app.png',
  ),
  Category(
    name: 'Accounting',
    noOfCourses: 30,
    coverImage: 'assets/images/accounting.png',
  ),
  Category(
    name: 'Photography ',
    noOfCourses: 10,
    coverImage: 'assets/images/photography.png',
  ),
  Category(
    name: 'Product design',
    noOfCourses: 14,
    coverImage: 'assets/images/product.png',
  ),
  Category(
    name: 'Marketing',
    noOfCourses: 10,
    coverImage: 'assets/images/marketing.png',
  ),
  Category(
    name: 'Web Develpoment',
    noOfCourses: 15,
    coverImage: 'assets/images/web.png',
  ),
];
