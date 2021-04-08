import 'package:flutter/material.dart';
import '../models/status.dart';

Widget _buildMyStatus() {
  return ListTile(
    leading: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage('https://i.imgur.com/a9NONDq.png'))),
        height: 50.0,
        width: 50.0),
    title: Text(
      'My status',
      style: TextStyle(fontWeight: FontWeight.w600),
    ),
    subtitle: Text('tap to add status update'),
  );
}

Widget _buildSectionHeader(context, title) {
  return Container(
      width: MediaQuery.of(context).size.width,
      color: Color.fromRGBO(244, 244, 244, 1),
      padding: EdgeInsets.only(left: 15.0, top: 5.0, bottom: 5.0),
      child: Text(title, style: TextStyle(color: Colors.grey)));
}

Widget _buildRecentUpdates(context, title, recentUpdates) {
  return SliverList(
      delegate: SliverChildListDelegate([
    _buildSectionHeader(context, title),
    ListView.builder(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      itemCount: recentUpdates.length,
      itemBuilder: (context, i) {
        final item = recentUpdates[i];

        return ListTile(
          leading: Container(
            width: 50.0,
            height: 50.0,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(item.photo))),
          ),
          title: Text(item.name, style: TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Text(item.timeAgo),
        );
      },
    )
  ]));
}

class StatusScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: <Widget>[
      SliverToBoxAdapter(
        child: _buildMyStatus(),
      ),
      _buildRecentUpdates(context, 'Recent updates', statuses),
      _buildRecentUpdates(context, 'Viewed updates', statuses)
    ]);
  }
}
