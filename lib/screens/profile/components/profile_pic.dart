import 'package:flutter/material.dart';
import 'package:tes_kerja/util/constants.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
    required this.pic,
  }) : super(key: key);
  final String pic;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundColor: kSecondaryColor,
            backgroundImage: NetworkImage(pic),
          ),
          Positioned(
            right: -16,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: const BorderSide(color: Colors.white),
                  ),
                  primary: Colors.white,
                  backgroundColor: const Color(0xFFF5F6F9),
                ),
                onPressed: () {},
                child: const CircleAvatar(
                  backgroundColor: kPrimaryColor,
                  // backgroundImage: AssetImage("assets/images/Profile Image.png"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
