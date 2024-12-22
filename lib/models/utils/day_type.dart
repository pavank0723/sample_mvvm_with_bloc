enum DayType {
  placeHolder(0, "-- Select day type --"),
  monday(1, "Monday"),
  tuesday(2, "Tuesday"),
  wednesday(3, "Wednesday"),
  thursday(4, "Thursday"),
  friday(5, "Friday"),
  saturday(6, "Saturday"),
  sunday(7, "Sunday");

  const DayType(this.id, this.title);

  final int id;
  final String title;
  static Map<String, int> _dayTypeMap = {
    monday.title: monday.id,
    tuesday.title: tuesday.id,
    wednesday.title: wednesday.id,
    thursday.title: thursday.id,
    friday.title: friday.id,
    saturday.title: saturday.id,
    sunday.title: sunday.id,
  };

  static int getDayTypeId(String dayName) => _dayTypeMap[dayName] ?? 0;

  static List<String> getDayTypes() {
    List<String> roles = [];
    for (var value in DayType.values) {
      roles.add(value.title);
    }
    return roles;
  }

  static String getDayTypeById(int dayId) {
    var dept = "";
    for (var value in DayType.values) {
      if (dayId == value.id) {
        dept = value.title;
        break;
      }
    }
    return dept;
  }
}

const int monday = 1;
const int tuesday = 2;
const int wednesday = 3;
const int thursday = 4;
const int friday = 5;
const int saturday = 6;
const int sunday = 7;
