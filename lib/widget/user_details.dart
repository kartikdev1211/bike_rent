import 'package:flutter/material.dart';

class UserDeatilsWidget extends StatelessWidget {
  final Image userImage;
  final String userName;
  const UserDeatilsWidget(
      {super.key, required this.userImage, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 36, top: 25, right: 14),
          child: SizedBox(
            height: 50,
            width: 50,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: userImage,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 25),
              child: Text(
                "Welcome",
                style: TextStyle(
                  color: Color.fromRGBO(140, 126, 126, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              userName,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ],
        )
      ],
    );
  }
}
