class CallModel {
  final String? name;
  final String? photo;
  final String? timeAgo;
  final bool seen;
  final bool callMade;
  CallModel({ this.name, this.photo, this.timeAgo, this.seen = false, this.callMade = false });
}


List<CallModel> calls = [

  new CallModel(
    name: 'Nevaeh Little',
    photo: 'https://randomuser.me/api/portraits/women/7.jpg',
    timeAgo: '15 minutes ago',
    seen: true,
    callMade: true
  ),
  new CallModel(
    name: 'Corey Jacobs',
    photo: 'https://randomuser.me/api/portraits/men/55.jpg',
    timeAgo: '10 minutes ago',
    callMade: true
  ),
  new CallModel(
      name: 'Ivan Cunningham',
      photo: 'https://randomuser.me/api/portraits/men/39.jpg',
      timeAgo: '1 hour ago',
      seen: true
  ),
  new CallModel(
      name: 'Roberto Obrien',
      photo: 'https://randomuser.me/api/portraits/men/3.jpg',
      timeAgo: '1 hour ago',
      seen: true,
      callMade: true
  ),
  new CallModel(
    name: 'Deann Ford',
    photo: 'https://randomuser.me/api/portraits/women/66.jpg',
    timeAgo: '30 minutes ago'
  ),

];
