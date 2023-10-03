import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/AddProduct.dart';
import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/Admin_home_view.dart';
import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/EditProduct.dart';
import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/manageProduct.dart';
import 'package:ecommerce_app_1/Feature/Admin/presentaion/view/orders_view.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/AddNewCard_view.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/AddReview_view.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/AddCart_View.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/Address_view.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/Home_View.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/Nike_view.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/Payment_View.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/orderConf_view.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/Cart_Body.dart';
import 'package:ecommerce_app_1/Feature/Home/presentation/view_user/widgets/Details_Body.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/Forget_password.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/NewPassword_view.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/SignUp.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/Sign_view.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/Start_view.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/Verification_view.dart';
import 'package:ecommerce_app_1/Feature/Sign/presentation/view/welcome_View.dart';
import 'package:ecommerce_app_1/Feature/splach/presentation/views/splash_screen.dart';

final routes = {
  Splach_view.routeName: (context) => const Splach_view(),
  Sign_view.routeName: (context) => const Sign_view(),
  Start_view.routeName: (context) => const Start_view(),
  SignUp_view.routeName: (context) => const SignUp_view(),
  Welcome_View.routeName: (context) => const Welcome_View(),
  New_Password_view.routeName: (context) => const New_Password_view(),
  Forget_Password_View.routeName: (context) => const Forget_Password_View(),
  Verification_view.routeName: (context) => const Verification_view(),
  Home_view.routeName: (context) => const Home_view(),
  AddReview_view.routeName: (context) => const AddReview_view(),
  AddCart_View.routeName: (context) => const AddCart_View(),
  Address_view.routeName: (context) => const Address_view(),
  Payment_view.routeName: (context) => const Payment_view(),
  AddNewCard_view.routeName: (context) => const AddNewCard_view(),
  Order_Conf_view.routeName: (context) => const Order_Conf_view(),
  Nike_view.routeName: (context) => const Nike_view(),
  Admin_Home_view.routeName: (context) => const Admin_Home_view(),
  AddProduct_view.routeName: (context) => const AddProduct_view(),
  ManageProduct_view.routeName: (context) => const ManageProduct_view(),
  EditProduct_view.routeName: (context) => const EditProduct_view(),
  Orders_view.routeName: (context) => const Orders_view(),
  Cart_Body.routeName: (context) => const Cart_Body(),
  Details_Body.routeName: (context) => const Details_Body(),
};
