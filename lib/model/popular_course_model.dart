class PopularCourse {
  String popularimage;
  String categoryTitle;
  String rating;

  PopularCourse({required this.popularimage, required this.categoryTitle,required this.rating});
}

List<PopularCourse> categorylist = [
  PopularCourse(
      popularimage: "assets/Flutter Post 1.png",
      categoryTitle: "Android Devolopment\nfrom zero to hero",
      rating: "8"),
  PopularCourse(
    popularimage: "assets/popularcourses2.png",
    categoryTitle: "UI/UX Complete\ncourse",
    rating: "12"
  ),
  PopularCourse(
      popularimage: "assets/LR IMG 1.1.png",
      categoryTitle: "LARAVAL\n php Developer",rating: "8"),
      

];
