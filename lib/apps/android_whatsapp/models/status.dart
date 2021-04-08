class StatusModel {
  final String? name;
  final String? photo;
  final String? timeAgo;
  final bool seen;
  StatusModel({ this.name, this.photo, this.timeAgo, this.seen = false });
}


List<StatusModel> statuses = [
  new StatusModel(
    name: 'Corey Jacobs',
    photo: 'https://randomuser.me/api/portraits/men/55.jpg',
    timeAgo: '10 minutes ago',
  ),
  new StatusModel(
    name: 'Nevaeh Little',
    photo: 'https://randomuser.me/api/portraits/women/7.jpg',
    timeAgo: '15 minutes ago',
    seen: true
  ),
  new StatusModel(
    name: 'Deann Ford',
    photo: 'https://randomuser.me/api/portraits/women/66.jpg',
    timeAgo: '30 minutes ago'
  ),
  new StatusModel(
      name: 'Roberto Obrien',
      photo: 'https://randomuser.me/api/portraits/men/3.jpg',
      timeAgo: '1 hour ago',
      seen: true
  ),
  new StatusModel(
      name: 'Ivan Cunningham',
      photo: 'https://randomuser.me/api/portraits/men/39.jpg',
      timeAgo: '1 hour ago',
      seen: true
  )
];
