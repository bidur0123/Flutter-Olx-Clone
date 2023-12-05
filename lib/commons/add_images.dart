import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';



void _settingModalBottomSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
          child:  Wrap(
            children: <Widget>[
               ListTile(
                  leading:  const Icon(Icons.music_note),
                  title:  const Text('Music'),
                  onTap: () => {}),
               ListTile(
                leading:  const Icon(Icons.videocam),
                title:  const Text('Video'),
                onTap: () {
                },
              ),
            ],
          ),
        );
      });
}
