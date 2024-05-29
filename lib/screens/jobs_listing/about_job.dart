// import 'package:foap/components/user_card.dart';
// import 'package:foap/controllers/job/job_controller.dart';
// import 'package:foap/model/job_model.dart';
// import 'package:foap/screens/jobs_listing/apply_job.dart';
// import '../../helper/imports/common_import.dart';
//
// class AboutJob extends StatelessWidget {
//   final JobModel job;
//   final JobController jobController = Get.find();
//
//   AboutJob({Key? key, required this.job}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: 30),
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     child: Heading4Text(
//                       job.title,
//                       weight: TextWeight.semiBold,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Container(
//                       color: AppColorConstants.themeColor.withOpacity(0.5),
//                       child: BodySmallText(job.category!.name)
//                           .setPadding(left: 20, right: 20, top: 8, bottom: 8))
//                   .round(5),
//               divider(height: 0.1).vP16,
//               Column(
//                 children: [
//                   Row(
//                     children: [
//                       BodyLargeText(
//                         experienceString.tr,
//                         weight: TextWeight.semiBold,
//                       ),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       BodyLargeText(
//                           '${job.minExperience} ${yearString.tr} - ${job.maxExperience} ${yearString.tr}'),
//                     ],
//                   ),
//                   const SizedBox(
//                     height: 20,
//                   ),
//                   Row(
//                     children: [
//                       BodyLargeText(salaryString.tr,
//                           weight: TextWeight.semiBold),
//                       const SizedBox(
//                         width: 20,
//                       ),
//                       BodyLargeText('\$${job.minSalary} - \$${job.maxSalary}'),
//                     ],
//                   )
//                 ],
//               ),
//               divider(height: 0.1).vP16,
//               BodyLargeText(
//                 skillsString.tr,
//                 weight: TextWeight.semiBold,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               BodyMediumText(job.skills),
//               divider(height: 0.1).vP16,
//               BodyLargeText(
//                 locationString.tr,
//                 weight: TextWeight.semiBold,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               BodyMediumText('${job.city},${job.state},${job.country}'),
//               divider(height: 0.1).vP16,
//               BodyLargeText(
//                 aboutString,
//                 weight: TextWeight.semiBold,
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               BodyMediumText(job.description),
//               divider(height: 0.1).vP16,
//               createdBy(),
//               const SizedBox(
//                 height: 100,
//               ),
//             ],
//           ),
//         ),
//         if (!job.isApplied)
//           Positioned(
//             bottom: 20,
//             left: DesignConstants.horizontalPadding,
//             right: DesignConstants.horizontalPadding,
//             child: AppThemeButton(
//                 text: applyString,
//                 onPress: () {
//                   Get.to(() => ApplyJob(job));
//                 }),
//           ),
//       ],
//     );
//   }
//
//   Widget createdBy() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         BodyLargeText(
//           postedByString,
//           weight: TextWeight.semiBold,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         UserInfo(
//           model: job.postedBy!,
//         )
//       ],
//     );
//   }
//
//   Widget createdFor() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Heading6Text(
//           fundRaisingForString,
//           weight: TextWeight.semiBold,
//           color: AppColorConstants.themeColor,
//         ),
//         const SizedBox(
//           height: 20,
//         ),
//         Row(
//           children: [
//             AvatarView(
//               url: job.postedBy!.picture,
//               name: job.postedBy!.name,
//               size: 50,
//             ),
//             Expanded(
//               child: Column(
//                 children: [
//                   BodyLargeText(
//                     job.postedBy!.name!,
//                     weight: TextWeight.semiBold,
//                   ),
//                 ],
//               ),
//             ),
//             const Spacer()
//           ],
//         )
//       ],
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foap/components/custom_texts.dart';
import 'package:foap/controllers/job/job_controller.dart';
import 'package:foap/model/job_model.dart';
import 'package:foap/screens/jobs_listing/apply_job.dart';
import '../../helper/imports/common_import.dart';

class AboutJob extends StatelessWidget {
  final JobModel job;
  final JobController jobController = Get.find();

  AboutJob({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Align(
                alignment: Alignment.center,
                child: Text('Job Details', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20))),
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
            SizedBox(height: 25),
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
            SizedBox(height: 20),
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
            SizedBox(height: 20),
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
            SizedBox(height: 20),
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
            SizedBox(height: 20),
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
            SizedBox(height:30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BodyLargeText(
                  "Description",
                  weight: TextWeight.bold,
                ),
                BodyMediumText(
              //    job.description,
                  'Comment Restriction of the ,we aere is lsem training',
                  weight: TextWeight.regular,
                ),
              ],
            ),
            SizedBox(height: 30),
          //  if (!job.isApplied)
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
                        // jobController.setCurrentJob(job);
                        // Get.to(() => ApplyJob(job));
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
                        // Handle reject action
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
  }

}
