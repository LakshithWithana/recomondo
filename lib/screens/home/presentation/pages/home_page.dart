import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:recomondo/constants/app_constants.dart';
import 'package:recomondo/core/widgets/advertisement_widget.dart';
import 'package:recomondo/screens/add_a_location/add_a_location_page.dart';
import 'package:recomondo/screens/home/presentation/widgets/filters_widget.dart';
import 'package:recomondo/screens/home/presentation/widgets/recomendation_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 100.0),
        child: FloatingActionButton(
          backgroundColor: mainOrangeColor,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AddALocationPage(),
                ));
          },
          child: const Icon(
            Icons.add,
            size: 50,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: mainGreyColor,
        title: Text(
          "Home",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 24.sp,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none,
                color: mainOrangeColor,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const FiltersWidget(),
              const Divider(),
              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Showing closest to distant order",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 8.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const Divider(),
              RecomendationWidget(),
              AdvertisementWidget(
                isLarge: true,
              ),
              const Divider(),
              RecomendationWidget(),
              RecomendationWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
