import 'package:flutter/material.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/AppBar_Slider.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/Banner.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/CarousalWithIndicator.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/DidNotFind.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/ExploreByCategories.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/ExploreByCategoriesDetails1.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/ExploreByCategoriesDetails2.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/ExploreByCategoriesDetails3.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/ExporeByCtgDetails.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/MustTryProductImage.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/MustTryProducts.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/NearestSeller.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/NearestSellerDetails.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/OurTopSellerDetails.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/OurTopSellers.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/RecentlyBuy.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/RecentlyBuyCategoriesDetails.dart';
import 'package:rupiyo/Features/Presentation/Pages/Home/HomeUtils/Top_address_bar_home.dart';
//import 'package:rupiyo/Features/Presentation/Pages/ItemWidget.dart';

//import 'package:rupiyo/Features/Presentation/Pages/Order.dart';
import 'package:rupiyo/Features/Presentation/Widgets/AnimatedSearchBar.dart';

//import 'package:rupiyo/Features/Presentation/Pages/WishList.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Future<void> _refresh() async {
    // Perform your refresh logic here
    // For example, you can fetch new data from your API or perform any other refreshing tasks
    // You may want to update the state or call setState to trigger a rebuild of the widget
  }

  @override
  void initState() {
    // Provider.of<LoaderProvider>(context, listen: false).startLoading();
    // Future.delayed(
    //   const Duration(seconds: 2),
    //   () {
    //     Provider.of<LoaderProvider>(context, listen: false).stopLoading();
    //   },
    // );
  }

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 25,
        backgroundColor: const Color(0xFFDF2C25),
        automaticallyImplyLeading: false,
      ),
      body: RefreshIndicator(
        backgroundColor: Color(0XFFDF2C25),
        color: Colors.white,
        onRefresh: _refresh,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          // child: Consumer<LoaderProvider>(
          // builder: (context, LoaderProvider, child) {
          // return LoaderProvider.isLoading ? const Center(
          // child: HomeCardSkeleton(),):
          child: SafeArea(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  children: [
                    //Home Page Contents Starts From Here.
                    const TopAdress(),
                    const AnimatedSearchBar(),
                    //CarousalSlider(),
                    
                    const SizedBox(
                      height: 27,
                    ),
                    const CarousalWithoutIndicator(),
                    const NearestSeller(),
                    const SizedBox(
                      height: 23,
                    ),
                    const NearestSellerDetails(),
                    //SizedBox(height: 23,),
                    //NearestSellerD2(),
                    const SizedBox(
                      height: 12,
                    ),
                    const ExploreByCtg(),
                    const SizedBox(
                      height: 12,
                    ),
                    // BoxDecTrial(),
                    const ExploreByCtgDetails(),
                    const SizedBox(
                      height: 10,
                    ),
                    const ExploreByCategories1(),
                    const SizedBox(
                      height: 5,
                    ),
                    const ExploreByCategories2(),
                    const SizedBox(
                      height: 5,
                    ),
                    const ExploreByCategories3(),
                    const SizedBox(
                      height: 16,
                    ),
                    const CarousalWithIndicator(),
                    const SizedBox(
                      height: 28,
                    ),
                    const recentlyBuy(),
                    const SizedBox(
                      height: 16,
                    ),
                    const RecentlyByCategoriesDetails(),
                    const SizedBox(height: 12),
                    const BannerImage(),
                    const SizedBox(height: 25),
                    const MustTryProducts(),
                    const SizedBox(height: 12),
                    const MustTryProductImage(),
                    const SizedBox(height: 15),
                    const Divider(
                      color: Color(0XFFe2e2e2),
                    ),
                    const SizedBox(height: 20),
                    const OurTopSeller(),
                    const SizedBox(height: 10),
                    const OurTopSellerDetails(),
                    const SizedBox(height: 30),
                    Container(
                      height: 1,
                      width: double.infinity,
                      margin: const EdgeInsets.only(top: 10),
                      color: const Color(0XFFe2e2e2),
                    ),
                    const DidNotFind(),
                    Container(
                      height: 1,
                      width: double.infinity,
                      //margin: EdgeInsets.only(top: 10),
                      color: const Color(0XFFe2e2e2),
                    ),
                    //Home Page Contents Ends Here.
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
