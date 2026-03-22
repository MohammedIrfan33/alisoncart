class AppHelpers{


   static  String errorMessageHandler(int? code) {
    switch (code) {
      case 400:
        return "Bad request";
      case 401:
        return "Unauthorized access";
      case 403:
        return "Access denied";
      case 404:
        return "Resource not found";
      case 500:
        return "Server error";
      default:
        return "Something went wrong";
    }
  }
}