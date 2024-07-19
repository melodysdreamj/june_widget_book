import 'package:flutter/material.dart';

class AvatarImageView extends StatefulWidget {
  AvatarImageView({super.key, required this.profileAvatarImage});

  final String profileAvatarImage;

  @override
  State<AvatarImageView> createState() => _AvatarImageViewState();
}

class _AvatarImageViewState extends State<AvatarImageView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Stack(children: [
        CircleAvatar(
          radius: 20.0,
          backgroundColor: Colors.grey[200],
          backgroundImage: NetworkImage(widget.profileAvatarImage != ""
              ? widget.profileAvatarImage
              : "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp"),
        ),
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            height: 15.0,
            width: 15.0,
            decoration: BoxDecoration(
              color: Color(0xFF50b525),
              shape: BoxShape.circle,
              border: Border.all(
                width: 2.0,
                color: Colors.white,
              ),
            ),
          ),
        )
      ]),
    );
  }
}

main() async {
  return runApp(MaterialApp(
    home: AvatarImageView(
      profileAvatarImage:
          "https://qph.fs.quoracdn.net/main-qimg-11ef692748351829b4629683eff21100.webp",
    ),
  ));
}
