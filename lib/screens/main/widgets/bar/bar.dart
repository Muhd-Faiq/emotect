import 'package:flutter/material.dart';

class Bar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);
  final ImageProvider _image;
  final String _title;
  final IconButton _button;

  const Bar({image, title, button})
      : _image = image,
        _title = title,
        _button = button;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: CircleAvatar(
        child: Text(
          _title[0].toUpperCase(),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Emotect'),
          Text(
            _title,
            style: TextStyle(fontSize: 12.0),
          ),
        ],
      ),
      actions: [_button],
    );
  }
}
