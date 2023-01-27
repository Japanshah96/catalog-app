// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clubhouse_app/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:clubhouse_app/data.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({
    Key? key,
    required this.room,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '${room.club} 🏠'.toUpperCase(),
                style: Theme.of(context).textTheme.overline!.copyWith(
                    fontSize: 12.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.0),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                room.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 15.0, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Positioned(
                        left: 28.0,
                        top: 28.0,
                        child: UserProfileImage(
                          imageUrl: room.speakers[1].imageUrl,
                          size: 48.0,
                        ),
                      ),
                      UserProfileImage(
                        imageUrl: room.speakers[0].imageUrl,
                        size: 48.0,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
