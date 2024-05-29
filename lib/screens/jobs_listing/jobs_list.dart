// import 'package:foap/controllers/job/job_controller.dart';
// import 'package:foap/model/job_model.dart';
// import 'package:foap/screens/jobs_listing/job_detail.dart';
// import '../../components/job/job_card.dart';
// import '../../helper/imports/common_import.dart';
//
// class JobsList extends StatelessWidget {
//   final JobController jobController = Get.find();
//
//   JobsList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<JobController>(
//         init: jobController,
//         builder: (ctx) {
//           return SizedBox(
//               height: jobController.jobs.length * 290,
//               child: ListView.separated(
//                 itemCount: jobController.jobs.length,
//                 padding: EdgeInsets.only(
//                     top: 0,
//                     left: DesignConstants.horizontalPadding,
//                     right: DesignConstants.horizontalPadding,
//                     bottom: 50),
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemBuilder: (ctx, index) {
//                   JobModel job = jobController.jobs[index];
//                   return JobCard(job: job).ripple(() {
//                     jobController.setCurrentJob(job);
//                     Get.to(() => JobDetail(
//                               job: job,
//                             ))!
//                         .then((value) {});
//                   });
//                 },
//                 separatorBuilder: (ctx, index) {
//                   return const SizedBox(
//                     height: 20,
//                   );
//                 },
//               ));
//         });
//   }
// }
import 'package:flutter/material.dart';
import 'package:foap/controllers/job/job_controller.dart';
import 'package:foap/model/job_model.dart';
import 'package:foap/screens/jobs_listing/job_detail.dart';
import '../../components/job/job_card.dart';
import '../../helper/imports/common_import.dart';

class JobsList extends StatelessWidget {
  final JobController jobController = Get.find();

  JobsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JobController>(
      init: jobController,
      builder: (ctx) {
        return Padding(
          padding: EdgeInsets.only(
            left: DesignConstants.horizontalPadding,
            right: DesignConstants.horizontalPadding,
            bottom: 50,
          ),
          child: GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of items per row
              crossAxisSpacing: 10, // Spacing between columns
              mainAxisSpacing: 20, // Spacing between rows
              childAspectRatio: 0.57,// Aspect ratio of the grid items
            ),
            itemCount: jobController.jobs.length,
            itemBuilder: (ctx, index) {
              JobModel job = jobController.jobs[index];
              return  JobCard(job: job);
            },
          ),
        );
      },
    );
  }
}

class AppliedJobsList extends StatelessWidget {
  final JobController jobController = Get.find();

  AppliedJobsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JobController>(
        init: jobController,
        builder: (ctx) {
          return SizedBox(
              height: jobController.appliedJobs.length * 290,
              child: ListView.separated(
                itemCount: jobController.appliedJobs.length,
                padding: EdgeInsets.only(
                    top: 0,
                    left: DesignConstants.horizontalPadding,
                    right: DesignConstants.horizontalPadding,
                    bottom: 50),
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                  JobModel job = jobController.appliedJobs[index];
                  return JobCard(job: job).ripple(() {
                    jobController.setCurrentJob(job);
                    Get.to(() => JobDetail(
                              job: job,
                            ))!
                        .then((value) {});
                  });
                },
                separatorBuilder: (ctx, index) {
                  return const SizedBox(
                    height: 20,
                  );
                },
              ));
        });
  }
}


// class AppliedJobsList extends StatelessWidget {
//   final JobController jobController = Get.find();
//
//   AppliedJobsList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<JobController>(
//       init: jobController,
//       builder: (ctx) {
//         return Padding(
//           padding: EdgeInsets.only(
//             left: DesignConstants.horizontalPadding,
//             right: DesignConstants.horizontalPadding,
//             bottom: 50,
//           ),
//           child: GridView.builder(
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//               crossAxisCount: 2, // Number of items per row
//               crossAxisSpacing: 10, // Spacing between columns
//               mainAxisSpacing: 20, // Spacing between rows
//               childAspectRatio: 1, // Aspect ratio of the grid items
//             ),
//             itemCount: jobController.appliedJobs.length,
//             itemBuilder: (ctx, index) {
//               JobModel job = jobController.appliedJobs[index];
//               return GestureDetector(
//                 onTap: () {
//                   jobController.setCurrentJob(job);
//                   Get.to(() => JobDetail(job: job))!.then((value) {});
//                 },
//                 child: JobCard(job: job),
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }
