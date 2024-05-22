

import '../../components/post_card/post_card.dart';
import '../../helper/imports/common_import.dart';
import '../../model/post_model.dart';
import '../../util/theme_helper.dart';

import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../controllers/post/add_post_controller.dart';
import '../../controllers/live/agora_live_controller.dart';
import '../../controllers/home/home_controller.dart';
import '../dashboard/dashboard_screen.dart';
import '../home_feed/home_feed_screen.dart';
import '../settings_menu/settings_controller.dart';

class HomeScreen extends StatefulWidget {


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

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
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    loadData();
    super.didUpdateWidget(oldWidget);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: theme.colorScheme.primaryContainer,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              )),
        ),
        title: Icon(
          Icons.home,
          color: Colors.black,
        ),
        // Home icon
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.black,
              ),
              // Person profile icon
              onPressed: () {
                // Add the logic for handling the profile icon click here
              },
            ),
          ),
        ],
      ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // menuView(),
            const SizedBox(
              height: 55,
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Heading3Text(
            //       AppConfigConstants.appName,
            //       weight: TextWeight.semiBold,
            //       color: AppColorConstants.themeColor,
            //     ),
            //     const Spacer(),
            //     SizedBox(
            //         height: 35,
            //         width: 35,
            //         child: ThemeIconWidget(
            //           ThemeIcon.plus,
            //           size: 25,
            //         )).ripple(() {
            //       Future.delayed(
            //         Duration.zero,
            //         () => showGeneralDialog(
            //             context: context,
            //             pageBuilder: (context, animation, secondaryAnimation) =>
            //                 //  AddPostScreen(
            //                 //   postType: PostType.basic,
            //                 //   postCompletionHandler: () {},
            //                 // )
            //                 const ContentCreatorView()),
            //       );
            //     }),
            //     const SizedBox(
            //       width: 20,
            //     ),
            //     SizedBox(
            //       height: 35,
            //       width: 35,
            //       child: Stack(
            //         alignment: Alignment.center,
            //         children: [
            //           ThemeIconWidget(
            //             ThemeIcon.chat,
            //             size: 25,
            //           ).ripple(() {
            //             Get.to(() => const ChatHistory());
            //           }),
            //           Obx(() => _dashboardController.unreadMsgCount.value == 0
            //               ? Container()
            //               : Positioned(
            //                   top: 0,
            //                   right: 5,
            //                   child: Container(
            //                     color: AppColorConstants.red,
            //                     height: 10,
            //                     width: 10,
            //                   ).circular,
            //                 ))
            //         ],
            //       ),
            //     ),
            //   ],
            // ).hp(20),
            //
            // const SizedBox(
            //
            //   height: 20,
            // ),


            Expanded(
              child: postsView(),
            ),
          ],
        )
    );
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
              return Obx(() =>
              _homeController.isRefreshingStories.value == true
                  ? const StoryAndHighlightsShimmer()
                  : Text(''));
              //storiesView());
            } else if (index == offset - 1) {
              return postingView().hP16;
            } else {
              PostModel model = _homeController.posts[index - offset];
              return
                PostCard(
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
