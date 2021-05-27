import 'package:admin/screens/CustomerProfile/customerprofile.dart';
import 'package:admin/screens/Document%20Verrification/document_verification.dart';
import 'package:admin/screens/Feedback/feedback.dart';
import 'package:admin/screens/GenerateCouponCode/generatecouponcode.dart';
import 'package:admin/screens/HelpCenter/help_center.dart';
import 'package:admin/screens/Home%20Page/home_page.dart';
import 'package:admin/screens/MessagingChat/chat.dart';
import 'package:admin/screens/MessagingInterior/chat_interior.dart';
import 'package:admin/screens/SettingsScreen/settings.dart';
import 'package:admin/screens/ShopAll/shopall.dart';
import 'package:admin/screens/Shop_Profile/shop_profile.dart';
import 'package:admin/screens/Shopeach/shopeach.dart';
import 'package:admin/screens/Verification%20Success/verification_success.dart';
import 'package:flutter/material.dart';
import 'package:admin/screens/splash/splash_screen.dart';
import 'package:admin/screens/Login%20Success/login_success.dart';
import 'package:admin/screens/LoginPage-Welcome/login_page.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginPage.routeName: (context) => LoginPage(),
  HomePage.routeName: (context) => HomePage(),
  Settings.routeName: (context) => Settings(),
  FeedbackScreen.routeName: (context) => FeedbackScreen(),
  CustomerProfile.routeName: (context) => CustomerProfile(),
  HelpCenter.routeName: (context) => HelpCenter(),
  LoginSuccess.routeName: (context) => LoginSuccess(),
  ChatScreen.routeName: (context) => ChatScreen(),
  ChatInterior.routeName: (context) => ChatInterior(),
  ShopProfile.routeName: (context) => ShopProfile(),
  DocumentVerification.routeName: (context) => DocumentVerification(),
  VerificationSuccess.routeName: (context) => VerificationSuccess(),
  GenerateCouponCode.routeName: (context) => GenerateCouponCode(),
  Shopeach.routeName: (context) => Shopeach(),
  Shopall.routeName: (context) => Shopall(),
};
