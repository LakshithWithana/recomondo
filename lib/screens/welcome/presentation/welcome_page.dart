import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/core/widgets/button_custom_widget.dart';
import 'package:recomondo/core/widgets/text_custom_widget.dart';
import 'package:recomondo/screens/auth/presentation/pages/login_page.dart';
import 'package:recomondo/screens/auth/presentation/pages/signup_page.dart';
import 'package:recomondo/screens/welcome/presentation/widgets/welcome_message_widget.dart';

import '../../../constants/app_constants.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextCustomWidget(
            marginTop: 94.h,
            text: "Welcome to the",
            fontSize: 40.sp,
            fontWeight: FontWeight.w700,
            containerAlignment: Alignment.center,
          ),
          RichText(
            text: TextSpan(
              text: 'R',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 40.sp,
                fontWeight: FontWeight.w700,
              ),
              children: const <TextSpan>[
                TextSpan(
                    text: 'ecoMondo',
                    style: TextStyle(
                      color: Colors.black,
                    )),
              ],
            ),
          ),
          TextCustomWidget(
            text:
                "Discover the world through your loved ones' eyes with RecoMondo.",
            marginTop: 36.h,
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            containerAlignment: Alignment.center,
            textAlign: TextAlign.center,
            marginLeft: 40.w,
            marginRight: 40.w,
            marginBottom: 30.h,
          ),
          Expanded(
            child: Swiper(
              itemCount: 5,
              itemBuilder: (context, index) => const WelcomeMessageWidget(),
              pagination: const SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  activeColor: Colors.red,
                  color: mainGreyColor,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          ButtonCustomWidget(
            buttonText: "Sign Up",
            callback: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupPage(),
                  ));
            },
          ),
          SizedBox(
            height: 10.h,
          ),
          ButtonCustomWidget(
              buttonText: "Login",
              callback: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ));
              }),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
