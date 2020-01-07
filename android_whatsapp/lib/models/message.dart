class MessageModel {
	final String message;
	final String time;
	final bool toMe;
	MessageModel({ this.message, this.time, this.toMe = true });
}

List<MessageModel> messages = [
  new MessageModel(
		message: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit',
		time: '9:41 AM'
	),
	new MessageModel(
		message: 'Maecenas et leo ac purus facilisis tincidunt et vel eros. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus',
		time: '9:36 AM',
		toMe: false
	),
	new MessageModel(
		message: 'Nullam rutrum pretium felis iaculis elementum. Fusce quis elit sapien',
		time: '9:29 AM'
	),
	new MessageModel(
		message: 'Aliquam erat volutpat',
		time: '9:29 AM',
		toMe: false
	),
	new MessageModel(
		message: 'Integer nec magna in purus cursus pellentesque sit amet sed orci. In varius consequat neque. Duis porttitor gravida vestibulum',
		time: '9:05 AM',
		toMe: false
	),
  new MessageModel(
		message: 'Etiam laoreet quis dolor nec auctor',
		time: '8:10 AM'
	),
	new MessageModel(
		message: 'Pellentesque arcu lacus, cursus non viverra egestas',
		time: '8:04 AM',
	),
   new MessageModel(
		message: 'per inceptos himenaeos',
		time: '8:01 AM',
		toMe: false
	),
  new MessageModel(
		message: 'Donec interdum gravida felis rhoncus euismod',
		time: '6:25 AM'
	),
  new MessageModel(
		message: 'Nullam volutpat pellentesque elit. Vestibulum imperdiet erat vel gravida scelerisque',
		time: '6:10 AM',
		toMe: false
	),
	new MessageModel(
		message: 'Etiam a luctus nunc. Class aptent taciti sociosqu ad litora torquent per conubia nostra',
		time: '5:28 AM'
	),

];
