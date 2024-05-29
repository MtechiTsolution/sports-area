/*
import 'dart:io';
import 'package:foap/helper/imports/common_import.dart';
import 'package:foap/screens/post/watch_videos.dart';
import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import '../../components/force_update_view.dart';
import '../../main.dart';
import '../add_on/ui/reel/reels.dart';
import '../home_feed/home_feed_screen.dart';
import '../profile/my_profile.dart';
import '../settings_menu/settings_controller.dart';
import 'explore.dart';

class DashboardController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxInt unreadMsgCount = 0.obs;
  RxBool isLoading = false.obs;

  indexChanged(int index) {
    currentIndex.value = index;
  }

  updateUnreadMessageCount(int count) {
    unreadMsgCount.value = count;
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<DashboardScreen> {
  final DashboardController _dashboardController = Get.find();
  final SettingsController _settingsController = Get.find();

  List<Widget> widgets = [];
  bool hasPermission = false;

  @override
  void initState() {
    isAnyPageInStack = true;

    widgets = [
      const HomeFeedScreen(),
      const Explore(),
      const Reels(
        needBackBtn: false,
      ),
      const WatchVideos(),
      const MyProfile(
        showBack: false,
      ),
    ];

    super.initState();
  }

  List<TabItem> items = const [
    TabItem(
      icon: Icons.home_outlined,
    ),
    TabItem(
      icon: Icons.search_sharp,
    ),
    TabItem(
      icon: Icons.play_arrow_outlined,
    ),
    TabItem(
      icon: Icons.videocam_outlined,
    ),
    TabItem(
      icon: Icons.account_circle_outlined,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => _dashboardController.isLoading.value == true
        ? SizedBox(
            height: Get.height,
            width: Get.width,
            child: const Center(child: CircularProgressIndicator()),
          )
        : _settingsController.forceUpdate.value == true
            ? ForceUpdateView()
            : _settingsController.appearanceChanged?.value == null
                ? Container()
                : AppScaffold(
                    backgroundColor: AppColorConstants.backgroundColor,
                    body: widgets[_dashboardController.currentIndex.value],
                    floatingActionButtonLocation:
                        FloatingActionButtonLocation.centerDocked,
                    bottomNavigationBar: SizedBox(
                      height: Platform.isIOS ? 100 : 70,
                      width: Get.width,
                      child: BottomBarCreative(
                        items: items,
                        backgroundColor: AppColorConstants.cardColor,
                        color: AppColorConstants.iconColor,
                        colorSelected: AppColorConstants.themeColor,
                        indexSelected: _dashboardController.currentIndex.value,
                        // highlightStyle: const HighlightStyle(
                        //     sizeLarge: true,
                        //     background: Colors.red,
                        //     elevation: 3),
                        // isFloating: true,
                        onTap: (index) {
                          _dashboardController.indexChanged(index);
                        },
                        // backgroundSelected: AppColorConstants.themeColor,
                      ),
                    )));
  }

  void onTabTapped(int index) async {
    // if (index == 2) {
    //   Future.delayed(
    //     Duration.zero,
    //     () => showGeneralDialog(
    //         context: context,
    //         pageBuilder: (context, animation, secondaryAnimation) =>
    //             const AddPostScreen(
    //               postType: PostType.basic,
    //             )),
    //   );
    // } else {
    Future.delayed(
        Duration.zero, () => _dashboardController.indexChanged(index));
    // }
  }
}
*/

import 'dart:async';
import 'dart:io';
import 'package:flutter_svg/svg.dart';
import 'package:foap/screens/dashboard/offers&application.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foap/helper/imports/chat_imports.dart';
import 'package:foap/helper/imports/common_import.dart';
import 'package:foap/screens/content_creator_view.dart';
import 'package:foap/screens/post/watch_videos.dart';
import 'package:get/get.dart';
import '../../util/image_constant.dart';
import '../../util/size_utils.dart';
import '../../components/force_update_view.dart';
import '../../main.dart';
import '../../widgets/custom_image_view.dart';
import '../add_on/ui/reel/reels.dart';
import '../home_feed/home_feed_screen.dart';
import '../profile/my_profile.dart';
import '../settings_menu/settings_controller.dart';
import '../test.dart';
import 'explore.dart';

class DashboardController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxInt unreadMsgCount = 0.obs;
  RxBool isLoading = false.obs;

  indexChanged(int index) {
    currentIndex.value = index;
  }

  updateUnreadMessageCount(int count) {
    unreadMsgCount.value = count;
  }
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  DashboardState createState() => DashboardState();
}

class DashboardState extends State<DashboardScreen> {
  final DashboardController _dashboardController = Get.find();
  final SettingsController _settingsController = Get.find();

  List<Widget> widgets = [];
  bool hasPermission = false;
  late StreamSubscription<bool> keyboardSubscription;
  double bottomMargin = 50.0;

  @override
  void initState() {
    super.initState();
    isAnyPageInStack = true;

    widgets = [
      const HomeFeedScreen(),
   // const  ChatHistory(),
      const Explore(),
  //    const Reels(needBackBtn: false),
      Offer_Application(),
      const WatchVideos(),
      const MyProfile(showBack: false),
      Test(),
    ];

    var keyboardVisibilityController = KeyboardVisibilityController();
    keyboardSubscription =
        keyboardVisibilityController.onChange.listen((bool visible) {
          setState(() {
            bottomMargin = visible ? 40.0 : 55.0;
          });
        });
  }

  @override
  void dispose() {
    keyboardSubscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() => _dashboardController.isLoading.value
        ? SizedBox(
      height: Get.height,
      width: Get.width,
      child: const Center(child: CircularProgressIndicator()),
    )
        : _settingsController.forceUpdate.value
        ? ForceUpdateView()
        : _settingsController.appearanceChanged?.value == null
        ? Container()
        : Scaffold(
      backgroundColor: AppColorConstants.backgroundColor,
      body: Stack(
        children: [
          widgets[_dashboardController.currentIndex.value],
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomBottomNavigationBar(
              currentIndex: _dashboardController.currentIndex.value,
              onTap: (index) {
                _dashboardController.indexChanged(index);
              },
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          // Handle the custom button tap here
          // onTapImgImage();

        },
        child: Container(
          width: getHorizontalSize(144),
          height: getVerticalSize(34),
          margin:
          EdgeInsets.only(bottom: bottomMargin), // Use the dynamic margin
          child: Center(
            child: CustomImageView(
              svgPath: 'assets/images/img_group237816.svg',
              height: getVerticalSize(34),
              // color: Colors.pink,
              width: getHorizontalSize(144),
              onTap: () {
                onTapPost();
              },
            ),
          ),
        ),
      ),
    ));
  }

  void onTapPost() {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const ContentCreatorView()));
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  CustomBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      currentIndex: currentIndex,
      onTap: onTap,
      unselectedItemColor: Colors.black,
      selectedItemColor: Colors.pink,
      items: [
        //1
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/img_globe_25x26.png',
            width: 24,
            height: 24,
            color: currentIndex == 0 ? Colors.pink : Colors.black,
          ),
          label: 'News & Score',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/images/Vector.png',
            width: 24,
            height: 24,
            color: currentIndex == 1 ? Colors.pink : Colors.black,
          ),
          label: 'Messaging',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/img_file.svg',
            width: 24,
            height: 24,
            color: currentIndex == 2 ? Colors.pink : Colors.black,
          ),
          label: 'Offers & Applications',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/img_component14.svg',
            width: 24,
            height: 24,
            color: currentIndex == 3 ? Colors.pink : Colors.black,
          ),
          label: 'Relationship',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/img_lightbulb.svg',
            width: 24,
            height: 24,
            color: currentIndex == 4 ? Colors.pink : Colors.black,
          ),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/images/img_ticket.svg',
            width: 24,
            height: 24,
            color: currentIndex == 5 ? Colors.pink : Colors.black,
          ),
          label: 'Entertainment',
        ),
      ],
    );
  }
}

class CustomImageView extends StatelessWidget {
  final String svgPath;
  final double height;
  final double width;
  final VoidCallback onTap;

  CustomImageView({
    required this.svgPath,
    required this.height,
    required this.width,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SvgPicture.asset(
        svgPath,
        height: height,
        width: width,
      ),
    );
  }
}
