// import 'package:asroo_store/core/common/dialogs/custom_dialog_one_button.dart';
// import 'package:asroo_store/core/common/widgets/custom_container_linear_customer.dart';
// import 'package:asroo_store/core/common/widgets/custom_favorite_button.dart';
// import 'package:asroo_store/core/common/widgets/custom_share_button.dart';
// import 'package:asroo_store/core/common/widgets/text_app.dart';
// import 'package:asroo_store/core/extensions/context_extension.dart';
// import 'package:asroo_store/core/extensions/string_extension.dart';
// import 'package:asroo_store/core/routes/app_routes.dart';
// import 'package:asroo_store/core/style/fonts/font_weight_helper.dart';
// import 'package:asroo_store/features/customer/favorites/presentation/cubit/favorites_cubit.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:reco_genie_task/core/common/widgets/custom_container_linear_customer.dart';

// class CustomProductItem extends StatelessWidget {
//   const CustomProductItem({
//     required this.imageUrl,
//     required this.title,
//     required this.categoryName,
//     required this.price,
//     required this.productId,
//     super.key,
//   });

//   final String imageUrl;
//   final String title;
//   final String categoryName;
//   final double price;
//   final int productId;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         // context.pushNamed(AppRoutes.productDetails, arguments: productId);
//       },
//       child: CustomContainerLinearCustomer(
//         height: 250.h,
//         width: 165.w,
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Buttons.
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 // Share Button.
//                 CustomShareButton(
//                   onPressed: () {
//                     CustomDialogOneButton.oneButtonDialog(
//                       context: context,
//                       textBody:
//                           '''The  "Firebase Dynamic Links"  Was Deprecated and the domain of our app is not working, and we working to handle this error and get the share button working again.''',
//                       textButton1: 'OK',
//                       onPressed: () {
//                         context.pop();
//                       },
//                       isLoading: false,
//                     );
//                   },
//                   size: 25.sp,
//                 ),
//                 /*//Share Button
//                 BlocBuilder<ShareCubit, ShareState>(
//                   builder: (context, state) {
//                     return state.when(
//                       initial: () {
//                         return CustomShareButton(
//                           size: 25,
//                           onTap: () {
//                             context.read<ShareCubit>().sendDynamicLinkProduct(
//                                   imageUrl: imageUrl,
//                                   productId: productId,
//                                   title: title,
//                                 );
//                           },
//                         );
//                       },
//                       loading: (id) {
//                         if (id == productId) {
//                           return Padding(
//                             padding: EdgeInsets.only(left: 10.w),
//                             child: SizedBox(
//                               height: 25.h,
//                               width: 25.w,
//                               child: CircularProgressIndicator(
//                                 color: context.color.bluePinkLight,
//                               ),
//                             ),
//                           );
//                         }
//                         return CustomShareButton(
//                           size: 25,
//                           onTap: () {},
//                         );
//                       },
//                       success: () {
//                         return CustomShareButton(
//                           size: 25,
//                           onTap: () {
//                             context.read<ShareCubit>().sendDynamicLinkProduct(
//                                   imageUrl: imageUrl,
//                                   productId: productId,
//                                   title: title,
//                                 );
//                           },
//                         );
//                       },
//                     );
//                   },
//                 ), */
//                 // Favorite Button.
//                 BlocBuilder<FavoritesCubit, FavoritesState>(
//                   builder: (context, state) {
//                     return CustomFavoriteButton(
//                       onPressed: () async {
//                         await context.read<FavoritesCubit>().manageFavorite(
//                           productId: productId.toString(),
//                           title: title,
//                           image: imageUrl,
//                           price: price.toString(),
//                           categoryName: categoryName,
//                         );
//                       },
//                       size: 25.sp,
//                       isFavorite: context.read<FavoritesCubit>().isFavorite(
//                         productId.toString(),
//                       ),
//                     );
//                   },
//                 ),
//               ],
//             ),
//             // Image.
//             Flexible(
//               child: Center(
//                 child: CachedNetworkImage(
//                   height: 200.h,
//                   width: 120.w,
//                   imageUrl: imageUrl.imageProductFormat(),
//                   fit: BoxFit.fill,
//                   errorWidget: (context, url, error) {
//                     return Icon(Icons.error, color: Colors.red, size: 70.h);
//                   },
//                 ),
//               ),
//             ),
//             SizedBox(height: 10.h),
//             // Title
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10.w),
//               child: TextApp(
//                 text: title,
//                 theme: context.textStyle.copyWith(
//                   fontSize: 14.sp,
//                   fontWeight: FontWeightHelper.bold,
//                 ),
//                 maxLines: 1,
//               ),
//             ),
//             SizedBox(height: 5.h),
//             // Category Name.
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10.w),
//               child: TextApp(
//                 text: categoryName,
//                 theme: context.textStyle.copyWith(
//                   fontSize: 13.sp,
//                   fontWeight: FontWeightHelper.medium,
//                 ),
//                 maxLines: 1,
//               ),
//             ),
//             // Price
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10.w),
//               child: TextApp(
//                 text: '\$ $price',
//                 theme: context.textStyle.copyWith(
//                   fontSize: 13.sp,
//                   fontWeight: FontWeightHelper.medium,
//                 ),
//                 maxLines: 1,
//               ),
//             ),
//             SizedBox(height: 5.h),
//           ],
//         ),
//       ),
//     );
//   }
// }
