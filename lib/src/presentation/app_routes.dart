import 'package:flutter/widgets.dart';
import 'package:food_delivery_admin/src/presentation/employee_accounts/employee_acounts_page.dart';
import 'package:food_delivery_admin/src/presentation/home.dart';
import 'package:food_delivery_admin/src/presentation/home_page/home_page.dart';
import 'package:food_delivery_admin/src/presentation/login/login_page.dart';
import 'package:food_delivery_admin/src/presentation/register/admin_register_page.dart';
import 'package:food_delivery_admin/src/presentation/register/company_register_page.dart';

import 'daily_menu/daily_meniu_page.dart';

// ignore: avoid_classes_with_only_static_members
class AppRoutes {
  static const String home = '/';
  static const String homePage = '/homePage';
  static const String adminRegister = '/adminRegister';
  static const String companyRegister = '/companyRegister';
  static const String login = '/login';
  static const String dailyMeniu = '/dailyMeniu';
  static const String employeeAccounts = '/employeeAccounts';


  static Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
    home: (BuildContext context) => const Home(),
    homePage: (BuildContext context) => const HomePage(),
    adminRegister: (BuildContext context) => const AdminRegisterPage(),
    companyRegister: (BuildContext context) => const CompanyRegisterPage(),
    login: (BuildContext context) => const LoginPage(),
    dailyMeniu: (BuildContext context) => const DailyMeniuPage(),
    employeeAccounts: (BuildContext context) => const EmployeeAccountsPage(),

  };
}