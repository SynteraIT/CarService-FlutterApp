Detail detail = Detail();

class Detail {
  String? typeofservice;
  DateTime? dateTime;
  String? vehicle;
  String? timeslot;
  String? mechanic;

  setVehicle(String vehicle) {
    this.vehicle = vehicle;
  }

  getVehicle() {
    return vehicle;
  }

  settypeofservice(String typeofservice) {
    this.typeofservice = typeofservice;
  }

  gettypeofservice() {
    return typeofservice;
  }

  setdatetime(DateTime dateTime) {
    this.dateTime = dateTime;
  }

  getdatetime() {
    return dateTime;
  }

  settimeslot(String timeslot) {
    this.timeslot = timeslot;
  }

  gettimeslot() {
    return timeslot;
  }

  setmechanic(String mechanic) {
    this.mechanic = mechanic;
  }

  getmechanic(String mechanic) {
    return mechanic;
  }
}
