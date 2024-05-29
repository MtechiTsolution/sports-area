import 'package:flutter/cupertino.dart';
import 'package:foap/screens/near_by_offers/offer_detail.dart';
import '../../helper/imports/common_import.dart';
import '../../model/offer_model.dart';
import 'package:foap/controllers/coupons/near_by_offers.dart';
import 'package:foap/helper/date_extension.dart';

class OfferCard extends StatelessWidget {
  final OfferModel offer;
   OfferCard({Key? key, required this.offer}) : super(key: key);
  final NearByOffersController _nearByOffersController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,top: 5),
      color: AppColorConstants.backgroundColor,
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          Row(
            children: [
        CircleAvatar(
                  radius: 30,
                  child: CachedNetworkImage(
                    imageUrl: offer.coverImage,
                    fit: BoxFit.cover,
                    // height: double.infinity,
                  ),
                ),
SizedBox(width: 10,),
              BodyLargeText(
             'Profile',
              //  weight: TextWeight.regular,
                color: AppColorConstants.mainTextColor,
              ),
            ],
          ),
          SizedBox(height: 3,),
          Wrap(
            children: [

              BodyMediumLargeText(
                '${codeString.tr.toUpperCase()}:',
                weight: TextWeight.bold,
              ),
              BodyMediumLargeText(
                offer.code,
                weight: TextWeight.bold,
                color: AppColorConstants.themeColor,
              ),
            ],
          ),
          SizedBox(height: 3,),
          BodyLargeText(
            offer.name,
            weight: TextWeight.regular,
            color: AppColorConstants.mainTextColor,
          ),
          SizedBox(height: 3,),
          BodyMediumText(
            aboutString.tr,
            color: AppColorConstants.subHeadingTextColor,
            weight: TextWeight.bold,
          ),
          SizedBox(height: 3,),
          BodyMediumText(
            offer.description,
            weight: TextWeight.regular,
          ),
          // BodyMediumText(
          //   expiringOnString.tr,
          //   color: AppColorConstants.subHeadingTextColor,
          //   weight: TextWeight.bold,
          // ),
          SizedBox(height: 3,),
          BodyMediumText(
            offer.endDate.formatTo('yyyy-MMM-dd'),
            weight: TextWeight.semiBold,
          ),
SizedBox(height: 10,),
SizedBox(
    height: 25,
              width: 125,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Colors.transparent, // Sets the background color to transparent
                    shadowColor: Colors.transparent, // Removes the shadow
                  ),
                  onPressed: (){
                    _showOfferDetailBottomSheet(context,offer);
                    // _nearByOffersController.setCurrentOffer(offer);
                    // Get.to(() => OfferDetail(offer: offer));
                  }
                  , child: Text('View Offer'))),

        ],
      ),
    ).shadowWithBorder(borderWidth: 0);
  }
}

void _showOfferDetailBottomSheet(BuildContext context, OfferModel offer) {
  showModalBottomSheet(
    context: context,
    backgroundColor: AppColorConstants.backgroundColor, // Adjust according to your design
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (BuildContext context) {
      return
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Align(
                    alignment: Alignment.center,
                    child: Text('Offers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
                SizedBox(height: 10),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: CachedNetworkImage(
                        imageUrl: offer.coverImage,
                        fit: BoxFit.cover,
                        // height: double.infinity,
                      ),
                    ),
                    SizedBox(width: 10,),
                    BodyLargeText(
                      'Profile',
                      weight: TextWeight.bold,
                      color: AppColorConstants.mainTextColor,
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Wrap(
                  children: [
                    BodyMediumLargeText(
                      'Sports:',
                      weight: TextWeight.bold,
                    ),
                    BodyMediumLargeText(
                      offer.code,
                      weight: TextWeight.bold,
                      color: AppColorConstants.themeColor,
                    ),
                  ],
                ),
                SizedBox(height: 20,),

                Wrap(
                  children: [
                    BodyMediumLargeText(
                      'Category : ',
                      weight: TextWeight.bold,
                    ),
                    BodyLargeText(
                      offer.name,
                      weight: TextWeight.regular,
                      color: AppColorConstants.mainTextColor,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Wrap(
                  children: [
                    BodyMediumLargeText(
                      'Level : ',
                      weight: TextWeight.bold,
                    ),
                    BodyLargeText(
                      aboutString.tr,
                      weight: TextWeight.regular,
                      color: AppColorConstants.mainTextColor,
                    ),
                  ],
                ),

                SizedBox(height: 0,),
                Wrap(
                  children: [
                    BodyMediumLargeText(
                      'Session : ',
                      weight: TextWeight.bold,
                    ),
                    BodyMediumText(
                      offer.endDate.formatTo('yyyy-MMM-dd'),
                      weight: TextWeight.semiBold,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Wrap(
                  children: [
                    BodyMediumLargeText(
                      'Average : ',
                      weight: TextWeight.bold,
                    ),
                    BodyMediumText(
                      '21 Years',
                      // offer.endDate.formatTo('yyyy-MMM-dd'),
                      weight: TextWeight.semiBold,
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BodyLargeText(
                      "Description",
                      weight: TextWeight.bold,
                    ),
                    BodyMediumText(
                      'Comment Restriction of the ,we aere is lsem training',
                      weight: TextWeight.regular,
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                // const SizedBox(
                //   height: 20,
                // ),
                // SizedBox(
                //   height: Get.height * 0.3,
                //   child: Stack(
                //     children: [
                //       CachedNetworkImage(
                //         imageUrl: offer.coverImage,
                //         width: double.infinity,
                //         height: double.infinity,
                //         fit: BoxFit.cover,
                //       )
                //     ],
                //   ),
                // ).round(25),
                // const SizedBox(
                //   height: 20,
                // ),
                // Wrap(
                //   children: [
                //     BodyExtraLargeText(
                //       '${codeString.tr.toUpperCase()} : ',
                //       weight: TextWeight.bold,
                //     ),
                //     BodyExtraLargeText(
                //       offer.code,
                //       weight: TextWeight.bold,
                //       color: AppColorConstants.themeColor,
                //     ),
                //   ],
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // BodyMediumText(
                //   offer.name,
                //   color: AppColorConstants.subHeadingTextColor,
                //   weight: TextWeight.bold,
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // BodyMediumText(
                //   aboutString.tr,
                //   color: AppColorConstants.subHeadingTextColor,
                //   weight: TextWeight.bold,
                // ),
                // const SizedBox(
                //   height: 8,
                // ),
                // BodyMediumText(
                //   offer.description,
                //   weight: TextWeight.regular,
                // ),
                // const SizedBox(
                //   height: 20,
                // ),
                // BodyMediumText(
                //   expiringOnString.tr,
                //   color: AppColorConstants.subHeadingTextColor,
                //   weight: TextWeight.bold,
                // ),
                // BodyMediumText(
                //   offer.endDate.formatTo('yyyy-MMM-dd'),
                //   weight: TextWeight.semiBold,
                // ),
                // const SizedBox(
                //   height: 8,
                // ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        height: 25,
                        width: 125,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.pinkAccent, // Sets the background color to transparent
                              shadowColor: Colors.transparent, // Removes the shadow
                            ),
                            onPressed: (){
                            }
                            , child: Text('Accept'))),
                    SizedBox(
                        height: 25,
                        width: 125,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              backgroundColor: Colors.transparent, // Sets the background color to transparent
                              shadowColor: Colors.transparent, // Removes the shadow
                            ),
                            onPressed: (){

                            }
                            , child: Text('Reject'))),
                  ],
                ),
              ],
            ),
          ),
        );
    },
  );
}