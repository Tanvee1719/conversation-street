import '../models/categoryModel.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> sendCategories = List<CategoryModel>();
  CategoryModel categoryModel;

  //1
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Business";
  categoryModel.imgURL =
      "https://images.unsplash.com/photo-1491336477066-31156b5e4f35?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";

  sendCategories.add(categoryModel);

  //2
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Entertainment";
  categoryModel.imgURL =
      "https://images.unsplash.com/photo-1486572788966-cfd3df1f5b42?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80";
  sendCategories.add(categoryModel);

  //3
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "General";
  categoryModel.imgURL =
      "https://images.unsplash.com/photo-1585776245991-cf89dd7fc73a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";

  sendCategories.add(categoryModel);

  //4
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Health";
  categoryModel.imgURL =
      "https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";

  sendCategories.add(categoryModel);

  //5
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Science";
  categoryModel.imgURL =
      "https://images.unsplash.com/photo-1534777410147-084a460870fc?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";

  sendCategories.add(categoryModel);

  //6
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Sports";
  categoryModel.imgURL =
      "https://images.unsplash.com/photo-1531415074968-036ba1b575da?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1047&q=80";

  sendCategories.add(categoryModel);

  //7
  categoryModel = new CategoryModel();
  categoryModel.categoryName = "Technology";
  categoryModel.imgURL =
      "https://images.unsplash.com/photo-1485827404703-89b55fcc595e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";

  sendCategories.add(categoryModel);

  return sendCategories;
}
