class Doctor {
  String name;
  String number;
  String job;
  String url;

  Doctor(this.name, this.number, this.job, this.url);
  
  static List<Doctor> generateDoctorList() {
    return[
      Doctor('cardiology', '45', 'Doctors', ''),
      Doctor('Dentistry', '50', 'Doctors', ''),
      Doctor('Radiology', '45', 'Doctors', ''),
      Doctor('Neorology', '45', 'Doctors', ''),
    ];
  }

}

class Nurse {
  String name;
  String number;
  String job;
  String url;

  Nurse(this.name, this.number, this.job, this.url);

  static List<Nurse> generateNurseList() {
    return[
      Nurse('cardiology', '45', 'Nurse', ''),
      Nurse('Dentistry', '70', 'Nurse', ''),
      Nurse('Radiology', '55', 'Nurse', ''),
      Nurse('neorology', '43', 'Nurse', ''),
    ];
  }
}