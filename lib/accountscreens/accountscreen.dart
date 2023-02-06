import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../colors/colors.dart';
import '../images/images.dart';
import '../routes/route_names.dart';
import '../textfontfamily/textfontfamily.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  InkWell inkWell(String image, String text, Function() onTap) {
    return InkWell(
      onTap: onTap,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SvgPicture.asset(image, color: ColorResources.red),
        title: Text(
          text,
          style: TextStyle(
              fontFamily: TextFontFamily.helveticaNeueCyrRoman,
              fontSize: 17,
              color: ColorResources.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorResources.backGroundColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 90, bottom: 5),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: ColorResources.white, width: 2),
                    color: ColorResources.grey5,
                  ),
                  child: Image.asset(Images.personicon),
                ),
                SizedBox(height: 20),
                Text(
                  "John Doe",
                  style: TextStyle(
                      fontFamily: TextFontFamily.helveticaNeueCyrRoman,
                      fontSize: 29,
                      fontWeight: FontWeight.w500,
                      color: ColorResources.white),
                ),
                SizedBox(height: 10),
                Text(
                  "+234 806 123 8970",
                  style: TextStyle(
                      fontFamily: TextFontFamily.helveticaNeueCyrRoman,
                      fontSize: 14,
                      color: ColorResources.grey2),
                ),
                SizedBox(height: 40),
                Container(
                  height: size.height,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(35),
                      topLeft: Radius.circular(35),
                    ),
                    color: ColorResources.blue2,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          inkWell(
                            Images.notificationicon,
                            "Notification",
                            () => context.goNamed(RouteName.notificationScreen),
                          ),
                          Divider(
                            thickness: 0.5,
                            color: ColorResources.blue1.withOpacity(0.6),
                          ),
                          inkWell(
                            Images.privacypolicyicon,
                            "Privacy policy",
                            () =>
                                context.goNamed(RouteName.privacyPolicyScreen),
                          ),
                          Divider(
                            thickness: 0.5,
                            color: ColorResources.blue1.withOpacity(0.6),
                          ),
                          inkWell(
                            Images.termsandconditionsicon,
                            "Terms and conditions",
                            () => context.goNamed(RouteName.termsAndConditions),
                          ),
                          Divider(
                            thickness: 0.5,
                            color: ColorResources.blue1.withOpacity(0.6),
                          ),
                          inkWell(
                            Images.logouticon,
                            "Logout",
                            () => context.goNamed(RouteName.welcomeScreen),
                          ),
                          Divider(
                            thickness: 0.5,
                            color: ColorResources.blue1.withOpacity(0.6),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
