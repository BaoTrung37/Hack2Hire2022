import 'package:flutter/material.dart';

import '../../data/model/show/response/show_info.dart';

class ShowWidget extends StatelessWidget {
  final ShowInfo _show;
  const ShowWidget(this._show, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      margin: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                _show.imageUrl ?? '',
                scale: 1.0,
                fit: BoxFit.cover,
                width: 80,
                height: 80,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(_show.name ?? ''),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                  child: Text('${_show.startDate ?? ''}'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
