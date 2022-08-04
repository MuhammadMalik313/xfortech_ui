class CategoryModel {
  String categoryImage;
  String categoryTitle;
  String categorySubtitle;
  CategoryModel(
      {required this.categoryImage,
      required this.categoryTitle,
      required this.categorySubtitle});
}

List<CategoryModel> categoryModelList = [
  CategoryModel(categoryImage: "assets/layers (1).png", categoryTitle: "Stack", categorySubtitle: "Devolopment"),
CategoryModel(categoryImage: "assets/3308553.png", categoryTitle: "Mobile", categorySubtitle: "Development"),
CategoryModel(categoryImage: "assets/3308395.png", categoryTitle: "Web", categorySubtitle: "Devolopment"),
CategoryModel(categoryImage: "assets/pen-tool.png", categoryTitle: "UI/UX", categorySubtitle: "Designing"),
CategoryModel(categoryImage: "assets/customize.png", categoryTitle: "Graphic", categorySubtitle: "Designing")


];
