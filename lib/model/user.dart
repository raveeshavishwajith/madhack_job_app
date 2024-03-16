class User {
  final String uid;
  final String email;
  final String displayName;
  final String photoURL;

  User({
    required this.uid,
    required this.email,
    required this.displayName,
    required this.photoURL,
  });

  factory User.fromSnapshot(Map<String, dynamic> snapshot) {
    return User(
      uid: snapshot['uid'] ?? '',
      email: snapshot['email'] ?? '',
      displayName: snapshot['displayName'] ?? '',
      photoURL: snapshot['photoURL'] ?? '',
    );
  }
}
