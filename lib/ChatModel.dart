class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/lego/4.jpg",
      name: "Hotel Radison",
      datetime: "30th July 2020, 20:18",
      message: "Food Donation",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/lego/1.jpg",
      name: "Hotel Westin",
      datetime: "30th July 2020, 19:22",
      message: "Food Donation",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/lego/2.jpg",
      name: "Hotel Kakatiya",
      datetime: "30th July 2020, 14:34",
      message: "Food Donation",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/lego/3.jpg",
      name: "Hotel Hayat",
      datetime: "30th July 2020, 11:34",
      message: "Food Donation",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/lego/4.jpg",
      name: "Hotel Lemon tree",
      datetime: "30th July 2020, 09:46",
      message: "Food Donation",
    ),
    ChatModel(
      avatarUrl: "https://randomuser.me/api/portraits/lego/5.jpg",
      name: "Hotel Red fox",
      datetime: "30th July 2020, 08:15",
      message: "Food Donation",
    ),
  ];
}
