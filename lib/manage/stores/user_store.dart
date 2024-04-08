import 'package:app_book/apps/const/key.dart';
import 'package:app_book/apps/route/route_name.dart';
import 'package:app_book/manage/services/firebase_service.dart';
import 'package:app_book/manage/services/store_service.dart';
import 'package:app_book/models/user_model.dart';
import 'package:get/get.dart';

class UserStore extends GetxController {
  static UserStore get to => Get.find();

  final RxBool _isLogin = false.obs;
  final RxString _token = "".obs;
  final Rx<UserModel> _info = UserModel().obs;

  bool get isLogin => _isLogin.value;
  String get token => _token.value;
  UserModel get userInfo => _info.value;
  String? get userRole => _info.value.role;

  String get idUser => _info.value.id ?? "";
  String get userName => _info.value.userName ?? 'Không rõ';
  String get userEmail => _info.value.email ?? 'Không có email';
  String get photoUrl =>
      _info.value.photoUrl ??
      'https://cdn.pixabay.com/photo/2016/08/08/09/17/avatar-1577909_960_720.png';
  String get role => _info.value.role ?? "isUser";

  @override
  Future<UserStore> onInit() async {
    String key = await StoreService.to.getString(MyKey.TOKEN_USER);
    UserModel? user = await FirebaseService().getUser(key);
    if (user != null) {
      _isLogin.value = true;
      _info.value = user;
    }
    return this;
  }

  Future<void> login(UserModel user) async {
    _info.value = user;
    _isLogin.value = true;
    StoreService.to.setString(MyKey.TOKEN_USER, user.id.toString());
    FirebaseService().updateUserOnlineStatus(user.id!, true);
    Get.offAndToNamed(RouterName.nav);
  }

  Future<void> logout() async {
    FirebaseService().updateUserOnlineStatus(idUser, false);
    _isLogin.value = false;
    _token.value = "";
    _info.value = UserModel();
    StoreService.to.clean(MyKey.TOKEN_USER);
  }

  void updateUserPhotoUrl(String newPhotoUrl) {
    _info.update((user) {
      user?.photoUrl = newPhotoUrl;
    });
  }
}
