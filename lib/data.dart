class User {
  final String givenName;
  final String familyName;
  final String imageUrl;

  const User({
    required this.givenName,
    required this.familyName,
    required this.imageUrl,
  });
}

const User currentUser = User(
    givenName: 'Japan',
    familyName: 'Shah',
    imageUrl: 'https://unsplash.com/photos/rDEOVtE7vOs');

const List<User> _allUsers = [
  User(
      givenName: 'Japan',
      familyName: 'Shah',
      imageUrl: 'https://unsplash.com/photos/rDEOVtE7vOs'),
  User(
      givenName: 'Hard',
      familyName: 'Shah',
      imageUrl: 'https://unsplash.com/photos/0YHIlxeCuhg'),
  User(
      givenName: 'Deepak',
      familyName: 'Sharma',
      imageUrl: 'https://unsplash.com/photos/t3zrEm88ehc'),
  User(
      givenName: 'Malhar',
      familyName: 'Parikh',
      imageUrl: 'https://unsplash.com/photos/C8Ta0gwPbQg'),
  User(
      givenName: 'Dhrumil',
      familyName: 'Shah',
      imageUrl: 'https://unsplash.com/photos/827XUhVSp8M'),
  User(
      givenName: 'Dhrumin',
      familyName: 'Patel',
      imageUrl: 'https://unsplash.com/photos/NR705beN_CU'),
  User(
      givenName: 'Sharvil',
      familyName: 'Desai',
      imageUrl: 'https://unsplash.com/photos/hh3ViD0r0Rc'),
  User(
      givenName: 'Virik',
      familyName: 'Rana',
      imageUrl: 'https://unsplash.com/photos/6VPEOdpFNAs'),
  User(
      givenName: 'Rushi',
      familyName: 'Rajpara',
      imageUrl: 'https://unsplash.com/photos/DItYlc26zVI'),
  User(
      givenName: 'Brijesh',
      familyName: 'Thakkar',
      imageUrl: 'https://unsplash.com/photos/WNoLnJo7tS8'),
];

class Room {
  final String club;
  final String name;
  final String time;
  final List<User> speakers;
  final List<User> followedBySpeakers;
  final List<User> others;

  const Room({
    required this.club,
    required this.name,
    this.time = '',
    this.speakers = const [],
    this.followedBySpeakers = const [],
    this.others = const [],
  });
}

const List<Room> upcomingRoomsList = [
  Room(
    club: 'Flutter',
    name: 'Flutter Engage Recap',
    time: '3:00 PM',
  ),
  Room(
    club: 'New User Onboarding',
    name: 'Welcome to Clubhouse',
    time: '7:00 PM',
  ),
  Room(
    club: '',
    name: 'Clubhouse turns 1',
    time: '9:00 PM',
  ),
];

final List<Room> roomsList = [
  Room(
    club: 'Social Society',
    name: 'Welcome to Clubhouse (Walkthrough with Q&A)',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'Good Time',
    name: 'A Very Important Person on Good Time ',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
  Room(
    club: 'Tech Seminar',
    name: 'Android Development Seminar',
    speakers: (List<User>.from(_allUsers)..shuffle()).getRange(0, 4).toList(),
    followedBySpeakers: List<User>.from(_allUsers)..shuffle(),
    others: List<User>.from(_allUsers)..shuffle(),
  ),
];
