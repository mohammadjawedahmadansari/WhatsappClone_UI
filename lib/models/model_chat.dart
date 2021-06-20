class ChatModel {
  final String name;
  final String message;
  final String time;
  final String pic;

  ChatModel({this.name, this.message, this.time, this.pic});
}

List<ChatModel> dummyData = [
  new ChatModel(
      name: "Dennis Ritchie",
      message: "Developing new Operating System",
      time: "20:07 pm",
      pic: "https://img.haikudeck.com/r/d8bb9f55-cbe1-4b27-a22.jpg"),
  new ChatModel(
      name: "Bjarne Stroustrup",
      message: "Must learn C++",
      time: "08:45 am",
      pic:
          "https://mappingthejourney.com/wp-content/uploads/2017/08/BStroustrup_MAIN-720x510.jpg"),
  new ChatModel(
      name: "James Gosling",
      message: "Hi, How are you? You are amazing.",
      time: "15:30 pm",
      pic:
          "https://i.pinimg.com/600x315/3a/24/16/3a2416a6a2865cf3874e9ec707afd8b4.jpg"),
  new ChatModel(
      name: "Andy Rubin",
      message: "Developer of Android",
      time: "21:34 pm",
      pic:
          "https://akm-img-a-in.tosshub.com/indiatoday/images/story/201810/Andy_Rubin_1.jpeg?CUt7ybgY1Lh80LBB81okt2W4RXPHtbI1"),
  new ChatModel(
      name: "Sundar Pichai",
      message: "CEO of Google.",
      time: "17:30 pm",
      pic:
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqpW_lrlfAZIFRSbVd-odzI4eArIUJ2W28yQ&usqp=CAU"),
  new ChatModel(
      name: "Mark Auckerberg",
      message: "Hello facebook CEO",
      time: "05:30 am",
      pic: "https://cdn.wallpapersafari.com/25/83/t4rQsh.jpg"),
];
