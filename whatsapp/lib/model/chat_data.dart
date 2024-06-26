import 'package:whatsapp/model/chat.dart';

class ChatData {
  List<Chat> _chat = [
    Chat(
      msg: "hiI am fine what about you",
      time: "9:14 Am",
      type: "send",
      status: 2,
      date: "26 Jun 2024",
    ),
    Chat(
      msg: "hello",
      time: "9:20 Am",
      type: "recived",
      status: 1,
      date: "26 Jun 2024",
    ),
    Chat(
      msg: "how are you?",
      time: "9:30 Am",
      type: "send",
      status: 1,
      date: "26 Jun 2024",
    ),
    Chat(
      msg: "I am fine what about you",
      time: "10:20 Am",
      type: "recived",
      status: 1,
      date: "26 Jun 2024",
    ),
    Chat(
      msg: "I am fine",
      time: "10:40 Am",
      type: "send",
      status: 1,
      date: "26 Jun 2024",
    ),
    Chat(
      msg: "hi",
      time: "10:40 Am",
      type: "send",
      status: 1,
      date: "27 Jun 2024",
    ),
    Chat(
        msg: "Good morning! How are you?",
        time: "8:45 AM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "I'm doing well, thanks!",
        time: "8:46 AM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Do you have any plans for today?",
        time: "9:00 AM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Not yet, what about you?",
        time: "9:02 AM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Just going to work, nothing special.",
        time: "9:05 AM",
        type: "send",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Oh, okay. Have a good day!",
        time: "9:10 AM",
        type: "received",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Thanks, you too!",
        time: "9:15 AM",
        type: "send",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Hey, are you free to chat?",
        time: "1:30 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Yes, what's up?",
        time: "1:32 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "I wanted to discuss our project.",
        time: "1:35 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Sure, let's talk about it.",
        time: "1:40 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Are we still meeting tomorrow?",
        time: "2:00 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Yes, same time and place.",
        time: "2:05 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Great, see you then!",
        time: "2:10 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Looking forward to it.",
        time: "2:15 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Did you get my email?",
        time: "3:30 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Yes, I received it. I'll respond soon.",
        time: "3:35 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Perfect, thanks!",
        time: "3:40 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Any updates on the project?",
        time: "4:00 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Not yet, I'll let you know soon.",
        time: "4:05 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Okay, I'll wait for your update.",
        time: "4:10 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Did you finish the report?",
        time: "5:30 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Yes, it's done.",
        time: "5:35 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Great job!",
        time: "5:40 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Thanks! Do you need anything else?",
        time: "5:45 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Not for now, thanks.",
        time: "5:50 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Hey, can we reschedule our meeting?",
        time: "6:00 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "Sure, what time works for you?",
        time: "6:05 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "How about Thursday at 3 PM?",
        time: "6:10 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024"),
    Chat(
        msg: "That works for me, see you then.",
        time: "6:15 PM",
        type: "send",
        status: 1,
        date: "26 Jun 2024"),
    Chat(
        msg: "Perfect, see you!",
        time: "6:20 PM",
        type: "received",
        status: 2,
        date: "26 Jun 2024")
  ];
//getter
  List<Chat> get chat => _chat;
}
