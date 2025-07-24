import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:reco_genie_task/Features/main/presentation/widgets/icon_tap_nav_bar.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Align(
        alignment: Alignment.bottomCenter,
        child: SizedBox(
          height: 85.h,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              // Icons.
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 15.h),
                  Container(
                    height: 70.h,
                    // color: context.color.navBarbg,
                    color: Colors.amber,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SizedBox(
                        height: 45.h,
                        width: 300.w,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  // Home Screen Icon
                                  IconTapNavBar(
                                    icon: '',
                                isSelected: true,
                                // cubit.navBarEnum == NavBarEnum.profile,
                                onTap: () {
                                  // cubit.selectedNavBarIcons(
                                  //   NavBarEnum.profile,
                                  // );
                                },
                                    // icon: AppImages.homeTab,
                                    // isSelected:
                                    //     cubit.navBarEnum == NavBarEnum.home,
                                    // onTap: () {
                                    //   cubit.selectedNavBarIcons(
                                    //     NavBarEnum.home,
                                    //   );
                                    // },
                                  ),
                                  // Notification Screen Icon
                                  GestureDetector(
                                    onTap: () {
                                      // cubit.selectedNavBarIcons(
                                      //   NavBarEnum.notifications,
                                      // );
                                    },
                                    child: Icon(Icons.card_travel),
                                    // child: NotificationBarIcon(
                                    //   isSelected:
                                    //       cubit.navBarEnum ==
                                    //       NavBarEnum.notifications,
                                    // ),
                                  ),
                                  // IconTapNavBar(
                                  //   icon: AppImages.notificationIcon,
                                  //   isSelected:
                                  //       cubit.navBarEnum ==
                                  //       NavBarEnum.categories,
                                  //   onTap: () {
                                  //     cubit.selectedNavBarIcons(
                                  //       NavBarEnum.categories,
                                  //     );
                                  //   },
                                  // ),
                                  // Favorites Screen Icon
                                  IconTapNavBar(
                                    icon: '',
                                isSelected: true,
                                // cubit.navBarEnum == NavBarEnum.profile,
                                onTap: () {
                                
                                },
                                    // icon: AppImages.favoritesTab,
                                    // isSelected:
                                    //     cubit.navBarEnum ==
                                    //     NavBarEnum.favorites,
                                    // onTap: () {
                                    //   cubit.selectedNavBarIcons(
                                    //     NavBarEnum.favorites,
                                    //   );
                                    // },
                                  ),
                                  // Profile Screen Icon
                                  IconTapNavBar(
                                    // icon: AppImages.profileTab,
                                    icon: '',
                                    isSelected: true,
                                        // cubit.navBarEnum == NavBarEnum.profile,
                                    onTap: () {
                                      // cubit.selectedNavBarIcons(
                                      //   NavBarEnum.profile,
                                      // );
                                    },
                                  ),
                                ],
                              )
                            ,
                          
                          // child: BlocBuilder<MainCubit, MainState>(
                          //   builder: (context, state) {
                          //     final cubit = context.read<MainCubit>();
                          //     return },
                          // ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // Background Icon.
              Positioned(
                top: -5.h,
                left: -8.w,
                child: Container(
                  height: 100.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(''),
                    ),
                  ),
                ),
              ),
              // Car Icon.
              Positioned(
                left: 30.w,
                top: 18.h,
                child: SvgPicture.asset(
                  '',
                  height: 22.h,
                  //
                  // ignore: deprecated_member_use
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}