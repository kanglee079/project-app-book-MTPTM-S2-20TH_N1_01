import 'package:app_book/manage/bindings/admin_home_binding.dart';
import 'package:app_book/manage/bindings/admin_manage_user_binding.dart';
import 'package:app_book/manage/bindings/book_binding.dart';
import 'package:app_book/manage/bindings/category_binding.dart';
import 'package:app_book/manage/bindings/favorite_book_binding.dart';
import 'package:app_book/manage/bindings/login_binding.dart';
import 'package:app_book/manage/bindings/nav_binding.dart';
import 'package:app_book/manage/bindings/notification_binding.dart';
import 'package:app_book/manage/bindings/pdf_view_binding.dart';
import 'package:app_book/manage/bindings/register_binding.dart';
import 'package:app_book/manage/bindings/setting_binding.dart';
import 'package:app_book/manage/bindings/slider_binding.dart';
import 'package:app_book/manage/bindings/user_setting_binding.dart';
import 'package:app_book/manage/middlewares/auth_middleware.dart';
import 'package:app_book/pages/appAdmin/addBookPage/add_book_page.dart';
import 'package:app_book/pages/appAdmin/addCategoryPage/add_category_page.dart';
import 'package:app_book/pages/appAdmin/addSliderPage/add_slider_page.dart';
import 'package:app_book/pages/appAdmin/adminBookPage/admin_book_page.dart';
import 'package:app_book/pages/appAdmin/adminCategoryPage/admin_category_page.dart';
import 'package:app_book/pages/appAdmin/adminManageUserPage/admin_manage_user_page.dart';
import 'package:app_book/pages/appAdmin/adminPage/admin_page.dart';
import 'package:app_book/pages/appAdmin/adminSliderPage/admin_slider_page.dart';
import 'package:app_book/pages/appAdmin/editBookPage/edit_book_page.dart';
import 'package:app_book/pages/appAdmin/editCategoryPage/edit_category_page.dart';
import 'package:app_book/pages/appAdmin/editSliderPage/edit_slider_page.dart';
import 'package:app_book/pages/appAdmin/listRoomChatPage/adminChatPage/admin_chat_page.dart';
import 'package:app_book/pages/appAdmin/listRoomChatPage/list_room_chat_page.dart';
import 'package:app_book/pages/appAdmin/navigator_admin_app_page.dart';
import 'package:app_book/pages/appAdmin/notificationSendPage/notification_send_page.dart';
import 'package:app_book/pages/appAdmin/settingPage/setting_page.dart';
import 'package:app_book/pages/appUser/navigator_user_app_page.dart';
import 'package:app_book/pages/appUser/searchPage/search_page.dart';
import 'package:app_book/pages/appUser/userCategoriesPage/userItemByCategoryPage/user_item_by_category_page.dart';
import 'package:app_book/pages/appUser/userCategoriesPage/user_categories_page.dart';
import 'package:app_book/pages/appUser/userFavoritePage/user_favorite_page.dart';
import 'package:app_book/pages/appUser/userHomePage/user_home_page.dart';
import 'package:app_book/pages/appUser/userPersonPage/changePasswordPage/change_password_page.dart';
import 'package:app_book/pages/appUser/userPersonPage/defaultInforPage/default_infor_page.dart';
import 'package:app_book/pages/appUser/userPersonPage/listChatWithAdmin/chatPage/chat_page.dart';
import 'package:app_book/pages/appUser/userPersonPage/listChatWithAdmin/list_chat_with_admin_page.dart';
import 'package:app_book/pages/appUser/userPersonPage/user_person_page.dart';
import 'package:app_book/pages/loginPage/login_page.dart';
import 'package:app_book/pages/pdfViewPage/pdf_view_page.dart';
import 'package:app_book/pages/registerPage/register_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../../pages/appAdmin/homePage/home_page.dart';
import '../../pages/appUser/userDetailBookPage/user_detail_book_page.dart';
import 'route_name.dart';

class RouterCustom {
  static List<GetPage> getPage = [
    GetPage(
      name: RouterName.login,
      page: () => const LoginPage(),
      binding: LoginBindings(),
      middlewares: [
        AuthMiddlewares(),
      ],
    ),
    GetPage(
      name: RouterName.register,
      page: () => const RegisterPage(),
      binding: RegisterBinding(),
      middlewares: [
        AuthMiddlewares(),
      ],
    ),
    GetPage(
      name: RouterName.nav,
      page: () => const NavigatorPage(),
      bindings: [
        NavBinding(),
        AdminHomeBinding(),
      ],
      middlewares: [
        AuthMiddlewares(),
      ],
    ),
    GetPage(
      name: RouterName.home,
      page: () => const HomePage(),
      binding: AdminHomeBinding(),
    ),
    GetPage(
      name: RouterName.admin,
      page: () => const AdminPage(),
    ),
    GetPage(
      name: RouterName.setting,
      page: () => const SettingPage(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: RouterName.adminBook,
      page: () => const AdminBookPage(),
      binding: BookBinding(),
    ),
    GetPage(
      name: RouterName.adminCategory,
      page: () => const AdminCategoryPage(),
      binding: CategoryBinding(),
    ),
    GetPage(
      name: RouterName.addBook,
      page: () => const AddBookPage(),
    ),
    GetPage(
      name: RouterName.addCaterogy,
      page: () => const AddCategoryPage(),
    ),
    GetPage(
      name: RouterName.editBook,
      page: () => const EditBookPage(),
    ),
    GetPage(
      name: RouterName.editCategory,
      page: () => const EditCategoryPage(),
    ),
    GetPage(
      name: RouterName.pdfView,
      page: () => const PdfViewerPage(),
      binding: PdfViewBinding(),
    ),
    //---------- User
    GetPage(
      name: RouterName.navUser,
      page: () => const NavigatorUserPage(),
      bindings: [
        BookBinding(),
        CategoryBinding(),
        FavoriteBookBinding(),
        SettingBinding(),
        UserSettingBinding(),
      ],
    ),
    GetPage(
      name: RouterName.userHome,
      page: () => UserHomePage(),
      binding: BookBinding(),
    ),
    GetPage(
      name: RouterName.detailBook,
      page: () => const UserDetailBookPage(),
    ),
    GetPage(
      name: RouterName.userCategories,
      page: () => const UserCategoriesPage(),
    ),
    GetPage(
      name: RouterName.userBookWithCategory,
      page: () => const UserItemByCategoryPage(),
    ),
    GetPage(
      name: RouterName.userPerson,
      page: () => const UserPersonPage(),
      binding: UserSettingBinding(),
    ),
    GetPage(
      name: RouterName.userFavorite,
      page: () => const UserFavoritePage(),
      binding: FavoriteBookBinding(),
    ),
    GetPage(
      name: RouterName.search,
      page: () => const SearchPage(),
    ),
    GetPage(
      name: RouterName.changePassword,
      page: () => const PersonalChangePasswordPage(),
    ),
    GetPage(
      name: RouterName.userChat,
      page: () => const ChatPage(),
    ),
    GetPage(
      name: RouterName.notificationSend,
      page: () => NotificationSendPage(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: RouterName.adminManageUser,
      page: () => const AdminManageUserPage(),
      binding: AdminManageUserBinding(),
    ),
    GetPage(
      name: RouterName.listRoomChat,
      page: () => const ListRoomChatPage(),
    ),
    GetPage(
      name: RouterName.userInfo,
      page: () => const DefaultInforPage(),
    ),
    GetPage(
      name: RouterName.listChatWithAdminPage,
      page: () => const ListChatwithAdminPage(),
    ),
    GetPage(
      name: RouterName.adminChatPage,
      page: () => const AdminChatPage(),
    ),
    GetPage(
      name: RouterName.addSliderPage,
      page: () => AddSliderPage(),
    ),
    GetPage(
      name: RouterName.adminSliderPage,
      page: () => const AdminSliderPage(),
      binding: SliderBinding(),
    ),
    GetPage(
      name: RouterName.editSliderPage,
      page: () => const EditSliderPage(),
    )
  ];
}
