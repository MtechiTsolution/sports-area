import 'package:flutter/material.dart';
import 'package:foap/screens/near_by_offers/offers_dashboard.dart';
import '../../controllers/job/job_controller.dart';
import 'package:foap/controllers/coupons/near_by_offers.dart';

import 'package:foap/controllers/coupons/near_by_offers.dart';
import 'package:foap/controllers/fund_raising/fund_raising_controller.dart';
import 'package:foap/controllers/shop/shop_controller.dart';
import 'package:foap/helper/imports/common_import.dart';
import 'package:foap/helper/imports/event_imports.dart';
import 'package:foap/screens/add_on/ui/dating/dating_dashboard.dart';
import 'package:foap/screens/add_on/ui/dating/profile/upload_profile_picture.dart';
import 'package:foap/screens/chatgpt/chat_gpt.dart';
import 'package:foap/screens/fund_raising/fund_raising_dashboard.dart';
import 'package:foap/screens/home_feed/story_uploader.dart';
import 'package:foap/screens/jobs_listing/job_listing_dashboard.dart';
import 'package:foap/screens/live/live_users_screen.dart';
import 'package:foap/screens/near_by_offers/offers_dashboard.dart';
import 'package:permission_handler/permission_handler.dart';
import '../../controllers/home/home_controller.dart';
import '../../controllers/job/job_controller.dart';
import '../../helper/permission_utils.dart';
import '../add_on/ui/podcast/podcast_dashboard.dart';
import '../add_on/ui/reel/create_reel_video.dart';
import '../chat/random_chat/choose_profile_category.dart';
import '../club/explore_clubs.dart';
import '../competitions/competitions_screen.dart';
import '../content_creator_view.dart';
import '../highlights/choose_stories.dart';
import '../shop_feature/home/shop_dashboard.dart';
import '../tvs/tv_dashboard.dart';

class Offer_Application extends StatefulWidget {
  @override
  State<Offer_Application> createState() => _Offer_ApplicationState();
}
class _Offer_ApplicationState extends State<Offer_Application> {
  final JobController jobController = Get.find();
  final NearByOffersController _nearByOffersController = Get.find();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.home),
          title: const Text("Offers&Applications"),
         actions: [Icon(Icons.plus_one)],
         // backgroundColor: Colors.blueGrey[900],
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.settings_applications),
                text: "Offers",
              ),
              Tab(
                icon: Icon(Icons.local_offer),
                text: "Application",
              ),


            ],
          ),
        ),
        body:  TabBarView(
          children: <Widget>[

        OffersDashboard(),
            JobDashboard(),

          ],
        ),
      ),
    );
  }
}