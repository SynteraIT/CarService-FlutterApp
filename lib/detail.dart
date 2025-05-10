Detail detail = Detail();

class Detail {
  String? typeofservice;
  DateTime? dateTime;
  String? appointmentdate;
  String? vehicle;
  String? timeslot;
  String? mechanic;

  setVehicle(String vehicle) {
    this.vehicle = vehicle;
  }

  getVehicle() {
    return vehicle;
  }

  settypeofservice(String vehicle) {
    this.vehicle = vehicle;
  }

  gettypeofservice() {
    return vehicle;
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
