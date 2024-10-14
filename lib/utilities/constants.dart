class Constants {

  //Network States
  static const String idle = "idle";
  static const String loading = "loading";
  static const String success = "success";
  static const String failure = 'failure';
  static const String serverError = 'serverError';
  static const String none = "none";


  ///Api

  static const String baseUrl = "https://fakestoreapi.com";

  static const String getCategory = "$baseUrl/products/categories";
  static const String getProduct = "$baseUrl/products/category";

}