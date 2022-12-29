void main(){
  user userOne = user('Gaurav', 23);
  print(userOne.username);
  print(userOne.age);
  // userOne.login();

  user userTwo = user('Sarkar', 23);
  print(userTwo.username);
  print(userOne.age);
  // userTwo.login();

  SuperUser userThree = SuperUser('Yo', 30);
  print(userThree.username);
  userThree.publish();
  userThree.login();
  
}

class user {
  String? username; // It should contain value in it so '?' sign is used to make it null value
  int? age;
  

  // Constructor
  user(String username,int age) {
    this.username = username;
    this.age = age;
  }

  void login(){
    print("User Logged in!");
  }
}

class SuperUser extends user {

  // Constructor
  SuperUser(String username, int age) : super(username, age);

  void publish(){
    print('Published!');
  }
}