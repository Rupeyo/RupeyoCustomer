import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rupiyo/Features/Presentation/Pages/BN.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/BottomBar.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Cart/Cart.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Categories/All_Categories.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Categories/Fruits&Vegitables/Fruits&Vegitables.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Categories/Fruits&Vegitables/Fruits&VegitablesList.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Categories/Fruits&Vegitables/ResponsiveContainer.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Home.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/AddAddressDetails.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/AddressInformation.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/All_Sellers.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/NearestSellerDetails.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/NearestSellerPage.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/Payment_Methods.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Login/LoginWithPhoneNumber.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Login/OtpVerification.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/Products/Products.dart';
import 'package:rupiyo/Features/Presentation/Pages/Rewards/Rewards.dart';
import 'package:rupiyo/Features/Presentation/Pages/SplashScreen/Splash_Screen.dart';
import 'package:rupiyo/Features/Presentation/Providers/loadingProvide.dart';
import 'package:rupiyo/Features/Presentation/Widgets/ImageSelector.dart';

Future<void> main() async {
  //async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   // options: const FirebaseOptions(
  //   //   apiKey: "XXX",
  //   //   appId: "XXX",
  //   //   messagingSenderId: "XXX",
  //   //   projectId: "XXX",
  //   // ),
  // );
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => LoaderProvider()),
    //Add Other Providers.
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      //home: const SplashScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/NearestSellerPage': (context) => const NearestSellerPage(),
        '/Home': (context) => const BottomBar(),
        '/Login': (context) => const LoginWithPhoneNumber(),
        '/OtpVerify': (context) => const OtpVerification(),
        '/PaymentMethods': (context) => const PaymentMethods(),
        '/Cart': (context) => const Cart(),
        '/AllCategories': (context) => const AllCategories(),
        '/Products': (context) => const ProductInfo(),
        '/Wallets': (context) => const Rewards(),
        '/SecondBottomBar': (context) => const BN(),
      },
    );
  }
}
