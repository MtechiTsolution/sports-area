import 'package:foap/controllers/job/job_controller.dart';
import 'package:foap/helper/imports/common_import.dart';
import 'package:foap/screens/jobs_listing/jobs_list.dart';
import '../../components/category_slider.dart';
import '../../components/paging_scrollview.dart';
import '../../components/search_bar.dart';

class ExploreJobs extends StatefulWidget {
  final bool fromCategory;

  const ExploreJobs({Key? key, required this.fromCategory}) : super(key: key);

  @override
  State<ExploreJobs> createState() => _ExploreJobsState();
}

class _ExploreJobsState extends State<ExploreJobs> {
  final JobController _jobController = Get.find();

  @override
  void initState() {
    _jobController.getCategories();
    _jobController.refreshJobs(() { });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        backgroundColor: AppColorConstants.backgroundColor,
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: Column(
            children: [
              // backNavigationBar(
              //   title: jobsString.tr,
              // ),
              Expanded(
                child: PagingScrollView(
                    child: Column(
                      children: [
                        SFSearchBar(
                                onSearchChanged: (text) {
                                  _jobController.setTitle(text);
                                },
                                onSearchCompleted: (text) {})
                            .p(DesignConstants.horizontalPadding),
                        if (widget.fromCategory == false)
                          // GetBuilder<JobController>(
                          //     init: _jobController,
                          //     builder: (ctx) {
                          //       return CategorySlider(
                          //         categories: _jobController.categories,
                          //         onSelection: (category) {
                          //           _jobController.setCategoryId(category?.id);
                          //         },
                          //       );
                          //     }).bp(40),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Obx(() => _jobController
                            //             .jobsDataWrapper.totalRecords.value >
                            //         0
                            //     ? Row(
                            //         children: [
                            //           Container(
                            //             height: 20,
                            //             width: 5,
                            //             color: AppColorConstants.themeColor,
                            //           ).round(5),
                            //           const SizedBox(
                            //             width: 10,
                            //           ),
                            //           Obx(() => BodyLargeText(
                            //               '${found.tr} ${_jobController.jobsDataWrapper.totalRecords} ${jobsString.tr.toLowerCase()}',
                            //               weight: TextWeight.semiBold)),
                            //         ],
                            //       ).hp(DesignConstants.horizontalPadding)
                            //     : Container()),
                            const SizedBox(
                              height: 20,
                            ),
                            JobsList()
                          ],
                        )
                      ],
                    ),
                    loadMoreCallback: (refreshController) {
                      _jobController.loadMoreJobs(() {
                        refreshController.loadComplete();
                      });
                    }),
              ),
            ],
          ),
        ));
  }
}
