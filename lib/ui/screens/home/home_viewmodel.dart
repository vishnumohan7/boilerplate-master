import 'package:boilerplate/models/ProductsModel.dart';
import 'package:boilerplate/services/api_service.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  ApiService apiService = ApiService();
  int counter = 0;

  void updateTitle() {
    counter++;
    notifyListeners();
  }

 Future<List<ProductsModel>> getAllProducts() async {
  List<ProductsModel> products = await apiService.getAllProducts();
  return products;
  }
}
