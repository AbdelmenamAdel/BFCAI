import 'package:flutter/material.dart';

import '../constants/constants.dart';

Widget ChatTail() => const ListTile(
      leading: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            backgroundColor: Color.fromARGB(255, 142, 211, 178),
            radius: 25,
            child: Image(
              image: NetworkImage(
                  "https://upload.wikimedia.org/wikipedia/ar/8/8c/Al_Ahly_SC_logo.png"),
            ),
          ),
          CircleAvatar(
            radius: 8,
            backgroundColor: Colors.white,
          ),
          CircleAvatar(
            radius: 6,
            backgroundColor: kPrimaryColor,
          )
        ],
      ),
      title: Text(
        'Abdelmenam Adel',
        style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        'Alo Ahmed Eziak Amel Eigh Alo Ahmed kalt wala eigh',
        style: TextStyle(color: Colors.black),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        '05:32 PM',
        style: TextStyle(color: Colors.black),
      ),
    );
