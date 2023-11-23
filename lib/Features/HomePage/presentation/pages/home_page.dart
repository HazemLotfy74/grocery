import 'package:circular_bottom_navigation/circular_bottom_navigation.dart';
import 'package:circular_bottom_navigation/tab_item.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/Core/Utils/app_color.dart';
import 'package:grocery_app/Core/Utils/app_size_config.dart';
import 'package:icons_plus/icons_plus.dart';
import '../widgets/home_page_body.dart';

class HomePage extends StatefulWidget {
   const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<TabItem> tabItems = List.of([
    TabItem(LineAwesome.home_solid,"" ,AppColors.primaryDark ,),
    TabItem(LineAwesome.user_circle_solid, "",AppColors.primaryDark ,),
    TabItem(LineAwesome.heart_solid, "",AppColors.primaryDark ,),
    TabItem(LineAwesome.shopping_cart_solid, "",AppColors.primaryDark),
  ]);

  late CircularBottomNavigationController _navigationController;
  int selectedPos = 0;

  @override
  void initState() {
    super.initState();
    _navigationController = CircularBottomNavigationController(selectedPos);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: const HomePageBody(),
      bottomNavigationBar:CircularBottomNavigation(
        tabItems,
        barBackgroundColor: Colors.white,
        barHeight: SizeConfig.defaultSize!*5,
        iconsSize: 25,
        selectedCallback: (selectedPos) {
          setState(() {
            selectedPos = selectedPos!;
          });
        },
        selectedPos: selectedPos,
        controller: _navigationController,
      )
    );

  }
}
