import 'package:whatsapp/model/user.dart';

class UserData {
  final List<User> _user = [
    User(
      name: "Suyesh Rathod",
      bio: "Jay Shree Ram",
      lastSeen: "online",
      dpPath: "assets/1.jpg",
    ),
    User(
      name: "Arjun Singh",
      bio: "Carpe Diem",
      lastSeen: "Today",
      dpPath: "assets/2.jpg",
    ),
    User(
      name: "Priya Sharma",
      bio: "Live and Let Live",
      lastSeen: "11/9/24",
      dpPath: "assets/3.jpg",
    ),
    User(
      name: "Ravi Kumar",
      bio: "Dream Big",
      lastSeen: "Just now",
      dpPath: "assets/4.jpg",
    ),
    User(
      name: "Sneha Patel",
      bio: "Keep Smiling",
      lastSeen: "Online",
      dpPath: "assets/1.jpg",
    ),
    User(
      name: "Amit Roy",
      bio: "Stay Positive",
      lastSeen: "15/9/24",
      dpPath: "assets/2.jpg",
    ),
    User(
      name: "Karan Verma",
      bio: "Work Hard, Play Hard",
      lastSeen: "11/11/24",
      dpPath: "assets/5.webp",
    ),
    User(
      name: "Neha Mehta",
      bio: "Love Life",
      lastSeen: "yesterday",
      dpPath: "assets/6.webp",
    ),
    User(
      name: "Rahul Jain",
      bio: "Keep Moving Forward",
      lastSeen: "Yesterday",
      dpPath: "assets/7.webp",
    ),
    User(
      name: "Anjali Yadav",
      bio: "Chase Your Dreams",
      lastSeen: "Just now",
      dpPath: "assets/8.webp",
    ),
  ];

//getter
  List<User> get user => _user;
}
