import 'package:flutter/material.dart';
import 'package:my_porfolio/global/utils/constants.dart';
import 'package:progressive_image/progressive_image.dart';

class PhotoWidget extends StatelessWidget {
  final String photoPath;
  const PhotoWidget({super.key, required this.photoPath});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppConstants.unitHeightValue(context) * AppConstants.photoHigh,
        width: AppConstants.unitWidthValu(context) * AppConstants.photoWidth,
        margin: EdgeInsets.all(
          AppConstants.unitHeightValue(context) * 3,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 20),
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          child: ProgressiveImage(
            placeholder: AssetImage(photoPath),
            // size: 1.87KB
            thumbnail: const NetworkImage('https://i.imgur.com/7XL923M.jpg'),
            // size: 1.29MB
            image: AssetImage(
              photoPath,
            ),
            height:
                AppConstants.unitHeightValue(context) * AppConstants.photoHigh,
            width:
                AppConstants.unitWidthValu(context) * AppConstants.photoWidth,
          ),
        ));
  }
}
