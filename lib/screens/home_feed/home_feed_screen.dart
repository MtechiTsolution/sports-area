import 'package:foap/helper/imports/chat_imports.dart';
import 'package:foap/helper/imports/common_import.dart';
import 'package:foap/helper/imports/story_imports.dart';
import 'package:foap/model/live_model.dart';
import 'package:foap/screens/home_feed/story_uploader.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import '../../components/post_card/post_card.dart';
import '../../controllers/post/add_post_controller.dart';
import '../../controllers/live/agora_live_controller.dart';
import '../../controllers/home/home_controller.dart';
import '../../model/post_model.dart';
import 'package:get/get.dart';
import '../../util/image_constant.dart';
import '../../util/size_utils.dart';
import '../../util/theme_helper.dart';
import '../../widgets/app_bar/appbar_image_1.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/en_us/en_us_translations.dart';
import '../content_creator_view.dart';
import '../dashboard/dashboard_screen.dart';
import '../dashboard/home_screen.dart';
import '../settings_menu/settings_controller.dart';

class HomeFeedScreen extends StatefulWidget {
  const HomeFeedScreen({super.key});

  @override
  HomeFeedState createState() => HomeFeedState();
}

class HomeFeedState extends State<HomeFeedScreen> {
  final HomeController _homeController = Get.find();
  final AddPostController _addPostController = Get.find();
  final AgoraLiveController _agoraLiveController = Get.find();
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);
  final SettingsController _settingsController = Get.find();
  final DashboardController _dashboardController = Get.find();
  final _controller = ScrollController();

  String? selectedValue;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      loadData();
      _homeController.loadQuickLinksAccordingToSettings();
    });
  }

  loadMore() {
    loadPosts();
  }

  refreshData() {
    _homeController.clearPosts();
    loadData();
  }

  @override
  void dispose() {
    super.dispose();
    _homeController.clear();
    _homeController.closeQuickLinks();
  }

  loadPosts() {
    _homeController.getPosts(callback: () {
      _refreshController.refreshCompleted();
      _refreshController.loadComplete();
    });

    _homeController.getPromotionalPosts();
  }

  void loadData() {
    loadPosts();
    if (_settingsController.setting.value!.enableStories) {
      _homeController.getStories();
    }
  }

  @override
  void didUpdateWidget(covariant HomeFeedScreen oldWidget) {
    loadData();
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: theme.colorScheme.primaryContainer,
        appBar:
        CustomAppBar(

            leadingWidth: getHorizontalSize(52),
            leading: AppbarImage1(
                imagePath: ImageConstant.imgHome1,
                margin: getMargin(left: 29, top: 7, bottom: 8),
                onTap: () {
                  Get.to(() => HomeScreen());
                }),
            centerTitle: true,
            title: AppbarSubtitle(
                text: enUs["lbl_news_score"]!,
                margin: getMargin(top: 7, bottom: 3)),
            actions: [
            InkWell(
            onTap: () async {

    },
        child: Padding(
          padding:
          const EdgeInsets.only(top: 0.0, right: 15, bottom: 15),
          child: Image.asset(
            ImageConstant.imglogo,
            height: getVerticalSize(20),
            width: getHorizontalSize(20),
            alignment: Alignment.bottomCenter,
          ),
        ),   ),
            ],
            styleType: Style.bgShadow
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            const SizedBox(
              height: 55,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Heading3Text(
                  AppConfigConstants.appName,
                  weight: TextWeight.semiBold,
                  color: AppColorConstants.themeColor,
                ),
                const Spacer(),
                SizedBox(
                    height: 35,
                    width: 35,
                    child: ThemeIconWidget(
                      ThemeIcon.plus,
                      size: 25,
                    )).ripple(() {
                  Future.delayed(
                    Duration.zero,
                        () => showGeneralDialog(
                        context: context,
                        pageBuilder: (context, animation, secondaryAnimation) =>
                        //  AddPostScreen(
                        //   postType: PostType.basic,
                        //   postCompletionHandler: () {},
                        // )
                        const ContentCreatorView()),
                  );
                }),
                const SizedBox(
                  width: 20,
                ),
                SizedBox(
                  height: 35,
                  width: 35,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      ThemeIconWidget(
                        ThemeIcon.chat,
                        size: 25,
                      ).ripple(() {
                        Get.to(() => const ChatHistory());
                      }),
                      Obx(() => _dashboardController.unreadMsgCount.value == 0
                          ? Container()
                          : Positioned(
                        top: 0,
                        right: 5,
                        child: Container(
                          color: AppColorConstants.red,
                          height: 10,
                          width: 10,
                        ).circular,
                      ))
                    ],
                  ),
                ),
              ],
            ).hp(20),

            const SizedBox(

              height: 20,
            ),
            Expanded(
              child: postsView(),
            ),
          ],
        ));
  }

  Widget postingView() {
    return Obx(() => _addPostController.isPosting.value
        ? Container(
            height: 55,
            color: AppColorConstants.cardColor,
            child: Row(
              children: [
                _addPostController.postingMedia.isNotEmpty &&
                        _addPostController.postingMedia.first.mediaType !=
                            GalleryMediaType.gif
                    ? _addPostController.postingMedia.first.thumbnail != null
                        ? Image.memory(
                            _addPostController.postingMedia.first.thumbnail!,
                            fit: BoxFit.cover,
                            width: 40,
                            height: 40,
                          ).round(5)
                        : _addPostController.postingMedia.first.mediaType ==
                                GalleryMediaType.photo
                            ? Image.file(
                                _addPostController.postingMedia.first.file!,
                                fit: BoxFit.cover,
                                width: 40,
                                height: 40,
                              ).round(5)
                            // : BodyLargeText(_addPostController.postingTitle)
                            : Container()
                    // : BodyLargeText(_addPostController.postingTitle),
                    : Container(),
                const SizedBox(
                  width: 10,
                ),
                Heading5Text(
                  _addPostController.isErrorInPosting.value
                      ? postFailedString.tr
                      : postingString.tr,
                ),
                const Spacer(),
                _addPostController.isErrorInPosting.value
                    ? Row(
                        children: [
                          Heading5Text(
                            discardString.tr,
                            weight: TextWeight.medium,
                          ).ripple(() {
                            _addPostController.discardFailedPost();
                          }),
                          const SizedBox(
                            width: 20,
                          ),
                          Heading5Text(
                            retryString.tr,
                            weight: TextWeight.medium,
                          ).ripple(() {
                            _addPostController.retryPublish();
                          }),
                        ],
                      )
                    : Container()
              ],
            ).hP8,
          ).backgroundCard(radius: 10).bp(20)
        : Container());
  }



  postsView() {
    int offset = _settingsController.setting.value!.enableStories ? 2 : 1;
    return Obx(() {
      return ListView.separated(
              controller: _controller,
              padding: const EdgeInsets.only(bottom: 100),
              itemCount: _homeController.posts.length + offset,
              itemBuilder: (context, index) {
                if (index == 0 &&
                    _settingsController.setting.value!.enableStories) {
                  return null;
                } else if (index == offset - 1) {
                  return null;
                    //postingView().hP16;
                } else {
                  PostModel model = _homeController.posts[index - offset];
                  return PostCard(
                    model: model,
                    removePostHandler: () {
                      _homeController.removePostFromList(model);
                    },
                    blockUserHandler: () {
                      _homeController.removeUsersAllPostFromList(model);
                    },
                  );
                }
              },
              separatorBuilder: (context, index) {
                if (index > 0 &&
                    index % 5 == 0 &&
                    _homeController.sponsoredPosts.length >= index / 5) {
                  PostModel post =
                      _homeController.sponsoredPosts[(index ~/ 5) - 1];
                  return Column(
                    children: [
                      PostCard(
                        model: post,
                        removePostHandler: () {
                          _homeController.removePostFromList(post);
                        },
                        blockUserHandler: () {
                          _homeController.removeUsersAllPostFromList(post);
                        },
                      ),
                      divider(
                        height: index > (offset - 1) ? 10 : 0,
                      ).tP16
                    ],
                  ).vp(index > (offset - 1) ? 16 : 8);
                } else {
                  return divider(
                    height: index > 1 ? 10 : 0,
                  ).vp(index > 1 ? 16 : 8);
                }
              })
          .addPullToRefresh(
              refreshController: _refreshController,
              enablePullUp: true,
              onRefresh: refreshData,
              onLoading: loadMore,
              enablePullDown: true);
    });
  }
}
