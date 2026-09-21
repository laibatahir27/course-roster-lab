//Part 1
void main(){
  printWelcome('Course Roster Manager');

  //Part 2
  const int maxCapacity=4;
  final DateTime createdAt=DateTime.now();
  String courseTitle='CS201: Mobile App Development';
  int capacity=maxCapacity;
  double creditHours=3.0;
  bool isOpen=true;
  List<String> enrolledStudents=['Aiden', 'Maria', 'Jamal'];
  Set<String> waitlist={'Priya', 'Noah'};
  Map<String,int> attendanceCount={'Aiden': 3, 'Maria': 4, 'Jamal': 2};

  print('$courseTitle | Capacity: $capacity | Enrolled: ${enrolledStudents.length}');

  //only createdAt cannott be const because DateTime.now() is only known at runtime.

  //Part 3
  String? instructorEmail;
  print(instructorEmail ?? 'TBA');

  late String enrollmentCode;
  enrollmentCode=generateCode(courseTitle);
  print('Enrollment code:$enrollmentCode');
  //print(instructorEmail!.length);
  print(instructorEmail?.length ?? 'No email yet');

  //Part 4
  String rawNames=' Aiden , maria ,JAMAL , Priya ';
  List<String> cleanNames=[];
  for (var name in rawNames.split(',')) {
    cleanNames.add(name.trim());
  }
  print('$cleanNames');

  String description='''
$courseTitle
Mobile App Development''';
  print(description);
  print('Seats left:${capacity - enrolledStudents.length}');

  //Part 5
  // ~/ and %
  int fullGroups=enrolledStudents.length ~/ 3;
  int leftover=enrolledStudents.length % 3;
  print('Full groups of 3: $fullGroups, leftover: $leftover');

  // is / is!
  Object formInput='twenty-two';
  if(formInput is String){
    print('This is text!');
  }
  if(formInput is! int){
    print('Not a number.');
  }

  //cascade ..
  var report=StringBuffer()
    ..write('Report: $courseTitle')
    ..write(' | Cap: $capacity')
    ..write(' | Roster: ${enrolledStudents.length}');
  print(report.toString());

  //Null-safe cascade ?..
  List<String>? extraNotes;
  extraNotes?..add('Room change pending');
  print('Extra notes: $extraNotes');

  // ??=
  int? bonusSeats;
  bonusSeats ??= 0;
  print('Bonus seats:$bonusSeats');

  // Part 6
  // if / else
  if(isOpen && enrolledStudents.length < capacity){
    print("You're in! Welcome aboard.");
  }
  else{
    print('Sorry, the course is full.');
  }

  // switch
  int enrollmentStatusCode=200;
  switch(enrollmentStatusCode){
    case 200:
      print('Enrolled');
      break;

    case 404:
      print('Course not found');
      break;

    default:
      print('Unknown error');
      break;
  }

  // Ternary
  String statusTag=isOpen ? 'OPEN' : 'FULL';
  print(statusTag);

}

/// Prints a welcome banner for the given app name.
void printWelcome(String appName){
  print('=== $appName ===');
}

String generateCode(String title) => title.substring(0, 2).toUpperCase() + '101';