// import 'package:foap/model/job_model.dart';
// import '../../helper/imports/common_import.dart';
//
// class JobCard extends StatelessWidget {
//   final JobModel job;
//
//   const JobCard({Key? key, required this.job}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Container(
//           height: 130,
//           color: AppColorConstants.cardColor,
//           child: Row(
//             children: [
//               CachedNetworkImage(
//                 height: double.infinity,
//                 width: 80,
//                 imageUrl: job.postedBy!.picture!,
//                 fit: BoxFit.cover,
//               ).round(10),
//               const SizedBox(
//                 width: 10,
//               ),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     BodyLargeText(
//                       job.postedBy!.name!,
//                       weight: TextWeight.semiBold,
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     BodyMediumText(
//                       job.title,
//                       weight: TextWeight.regular,
//                     ),
//                     const SizedBox(
//                       height: 8,
//                     ),
//                     BodyMediumText(
//                       '\$${job.minSalary} - \$${job.maxSalary}',
//                       weight: TextWeight.bold,
//                       maxLines: 4,
//                       color: AppColorConstants.themeColor,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ).hP8,
//         ),
//         if (job.isApplied)
//           Positioned(
//             right: 10,
//             top: 10,
//             child: Container(
//               color: AppColorConstants.themeColor,
//               child: BodySmallText(
//                 appliedString.tr,
//                 color: Colors.white,
//               ).p4,
//             ).round(5),
//           )
//       ],
//     ).round(10);
//   }
// }
//
// import 'package:flutter/material.dart';
// import 'package:foap/model/job_model.dart';
// import '../../helper/imports/common_import.dart';
// import 'package:foap/controllers/job/job_controller.dart';
// import 'package:foap/screens/jobs_listing/job_detail.dart';
//
//
// class JobCard extends StatelessWidget {
//   final JobModel job;
//
//    JobCard({Key? key, required this.job}) : super(key: key);
//   final JobController jobController = Get.find();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(left: 10, top: 5),
//       color: AppColorConstants.backgroundColor,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               CircleAvatar(
//                 radius: 30,
//                 child: CachedNetworkImage(
//                   imageUrl: job.postedBy!.picture!,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               SizedBox(width: 10),
//               BodyLargeText(
//                 job.postedBy!.name!,
//                 color: AppColorConstants.mainTextColor,
//               ),
//             ],
//           ),
//           SizedBox(height: 3),
//           Wrap(
//             children: [
//               BodyMediumLargeText(
//                 'Job ID:',
//                 weight: TextWeight.bold,
//               ),
//               BodyMediumLargeText(
//                 job.id.toString(),
//                 weight: TextWeight.bold,
//                 color: AppColorConstants.themeColor,
//               ),
//             ],
//           ),
//           SizedBox(height: 3),
//           BodyLargeText(
//             job.title,
//             weight: TextWeight.regular,
//             color: AppColorConstants.mainTextColor,
//           ),
//           SizedBox(height: 3),
//           // BodyMediumText(
//           //   'Description:',
//           //   color: AppColorConstants.subHeadingTextColor,
//           //   weight: TextWeight.bold,
//           // ),
//           // SizedBox(height: 3),
//           // BodyMediumText(
//           //   job.description,
//           //   weight: TextWeight.regular,
//           // ),
//           // SizedBox(height: 3),
//           // BodyMediumText(
//           //   'Salary Range:',
//           //   color: AppColorConstants.subHeadingTextColor,
//           //   weight: TextWeight.bold,
//           // ),
//           // SizedBox(height: 3),
//           // BodyMediumText(
//           //   '\$${job.minSalary} - \$${job.maxSalary}',
//           //   weight: TextWeight.semiBold,
//           // ),
//           // SizedBox(height: 10),
//           // SizedBox(
//           //   height: 25,
//           //   width: 125,
//           //   child: ElevatedButton(
//           //     style: ElevatedButton.styleFrom(
//           //       elevation: 5,
//           //       backgroundColor: Colors.transparent, // Sets the background color to transparent
//           //       shadowColor: Colors.transparent, // Removes the shadow
//           //     ),
//           //     onPressed: () {
//           //       // Navigate to job detail
//           //       Get.find<JobController>().setCurrentJob(job);
//           //       Get.to(() => JobDetail(job: job));
//           //     },
//           //     child: Text('View Job'),
//           //   ),
//           // ),
//         ],
//       ),
//     ).shadowWithBorder(borderWidth: 0);
//   }
// }
import 'package:flutter/material.dart';
import 'package:foap/model/job_model.dart';
import '../../helper/imports/common_import.dart';
import 'package:foap/controllers/job/job_controller.dart';
import 'package:foap/screens/jobs_listing/job_detail.dart';

class JobCard extends StatelessWidget {
  final JobModel job;

  JobCard({Key? key, required this.job}) : super(key: key);
  final JobController jobController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      // padding: EdgeInsets.all(10),
      color: AppColorConstants.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 30,
                  child: CachedNetworkImage(
                    imageUrl: job.postedBy!.picture!,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10),
                BodyLargeText(
                  job.postedBy!.name!,
                  color: AppColorConstants.mainTextColor,
                ),
              ],
            ),
            SizedBox(height: 3),
            Wrap(
              children: [
                BodyMediumLargeText(
                  'Job ID:',
                  weight: TextWeight.bold,
                ),
                BodyMediumLargeText(
                  job.id.toString(),
                  weight: TextWeight.bold,
                  color: AppColorConstants.themeColor,
                ),
              ],
            ),
            SizedBox(height: 3),
            BodyLargeText(
          "  Software Development",
              weight: TextWeight.regular,
              color: AppColorConstants.mainTextColor,
            ),
            SizedBox(height: 3),
            BodyMediumText(
              'FootBall , Hockey',
              color: AppColorConstants.subHeadingTextColor,
              weight: TextWeight.bold,
            ),
            SizedBox(height: 3),
            BodyMediumText(
              'Session 2023',
              color: AppColorConstants.subHeadingTextColor,
              weight: TextWeight.bold,
            ),
            // SizedBox(height: 5),
            // BodyMediumText(
            //   job.description,
            //   weight: TextWeight.regular,
            // ),
            SizedBox(height: 3),
            // BodyMediumText(
            //   'Salary Range:',
            //   color: AppColorConstants.subHeadingTextColor,
            //   weight: TextWeight.bold,
            // ),
            // SizedBox(height: 5),
            BodyMediumText(
              'Search a club BasketBall',
              weight: TextWeight.semiBold,
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 25,
              width: 125,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 5,
                  backgroundColor: Colors.transparent, // Sets the background color to transparent
                  shadowColor: Colors.transparent, // Removes the shadow
                ),
                onPressed: () {
                  _showJobDetailBottomSheet(context, job);
                  // Navigate to job detail
                  // jobController.setCurrentJob(job);
                  // Get.to(() => JobDetail(job: job));
                },
                child: Text('Apply Now'),
              ),
            ),
            // if (job.isApplied)
            //   Positioned(
            //     right: 10,
            //     top: 10,
            //     child: Container(
            //       color: AppColorConstants.themeColor,
            //       child: BodySmallText(
            //         appliedString.tr,
            //         color: Colors.white,
            //       ).p4,
            //     ).round(5),
            //   )
          ],
        ),
      ),
    );
  }
}
void _showJobDetailBottomSheet(BuildContext context, JobModel job) {
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColorConstants.backgroundColor, // Adjust according to your design
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text('Job Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    child: CachedNetworkImage(
                      imageUrl: job.postedBy!.picture!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10),
                  BodyLargeText(
                    job.postedBy!.name!,
                    weight: TextWeight.bold,
                    color: AppColorConstants.mainTextColor,
                  ),
                ],
              ),
              SizedBox(height: 15),
              Wrap(
                children: [
                  BodyMediumLargeText(
                    'Experience: ',
                    weight: TextWeight.bold,
                  ),
                  BodyMediumLargeText(
                    '${job.minExperience} - ${job.maxExperience} years',
                    weight: TextWeight.bold,
                    color: AppColorConstants.themeColor,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Wrap(
                children: [
                  BodyMediumLargeText(
                    'Category: ',
                    weight: TextWeight.bold,
                  ),
                  BodyLargeText(
                    job.category!.name,
                    weight: TextWeight.regular,
                    color: AppColorConstants.mainTextColor,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Wrap(
                children: [
                  BodyMediumLargeText(
                    'Position: ',
                    weight: TextWeight.bold,
                  ),
                  BodyLargeText(
                    'leader',
                    weight: TextWeight.regular,
                    color: AppColorConstants.mainTextColor,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Wrap(
                children: [
                  BodyMediumLargeText(
                    'Salary: ',
                    weight: TextWeight.bold,
                  ),
                  BodyLargeText(
                    '\$${job.minSalary} - \$${job.maxSalary}',
                    weight: TextWeight.regular,
                    color: AppColorConstants.mainTextColor,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Wrap(
                children: [
                  BodyMediumLargeText(
                    'Location: ',
                    weight: TextWeight.bold,
                  ),
                  BodyLargeText(
                    '${job.city}, ${job.state}, ${job.country}',
                    weight: TextWeight.regular,
                    color: AppColorConstants.mainTextColor,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyLargeText(
                    "Description",
                    weight: TextWeight.bold,
                  ),
                  BodyMediumText(
                    'Comment Restriction of the ,we aere is lsem training', // Replace with job.description
                    weight: TextWeight.regular,
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 25,
                    width: 125,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pinkAccent,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        // Handle apply action
                      },
                      child: Text('Apply'),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    width: 125,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        // Handle save action
                      },
                      child: Text('Save'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
