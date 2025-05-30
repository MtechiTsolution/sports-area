import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:foap/helper/imports/chat_imports.dart';
import 'package:foap/helper/imports/common_import.dart';
import 'package:foap/helper/string_extension.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:responsive_text_widget/responsive_text_widget.dart';
import '../link_preview.dart';

class TextChatTile extends StatelessWidget {
  final ChatMessageModel message;

  const TextChatTile({Key? key, required this.message}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    String messageString = message.textMessage;

    bool validURL = messageString.isValidUrl;
    return validURL == true
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              linkPreview(messageString),
              const SizedBox(
                height: 10,
              ),
              Linkify(
                onOpen: (link) async {
                  if (await canLaunchUrl(Uri.parse(link.url))) {
                    await launchUrl(Uri.parse(link.url));
                  } else {
                    throw 'Could not launch $link';
                  }
                },


                    text: messageString,
                    style: TextStyle(
                        fontSize: FontSizes.b2, color: AppColorConstants.mainTextColor, overflow: TextOverflow.ellipsis,),


              )
            ],
          )
        : Linkify(
            onOpen: (link) async {
              if (await canLaunchUrl(Uri.parse(link.url))) {
                await launchUrl(Uri.parse(link.url));
              } else {
                throw 'Could not launch $link';
              }
            },
        text: messageString,

     style: TextStyle(
         fontSize: FontSizes.b2, color: AppColorConstants.mainTextColor),

    );

  }
}
