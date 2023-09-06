void main() {
  Employee employee = new Employee(
    id: 1,
    fullName: 'Nguyen Ba Khanh',
    dateOfBirth: '081103',
    address: 'Ha Noi',
    phoneNumber: '0987729543',
  );
  print("--------Before update-------");
  addNewEmployee(employee);
  listEmployee();
  displayAllEmployee();
  updateEmployee(1, 'Khanh Boong', '121203', 'London', '0123456789');
  print("----------After update---------");
  displayAllEmployee();
}

class Employee {
  int? id;
  String? fullName;
  String? dateOfBirth;
  String? address;
  String? phoneNumber;

  Employee(
      {this.id,
      this.fullName,
      this.dateOfBirth,
      this.address,
      this.phoneNumber});

  set setId(int id) {
    this.id = id;
  }

  set setName(String fullName) {
    this.fullName = fullName;
  }

  set setDateOfBirth(String dateOfBirth) {
    this.dateOfBirth = dateOfBirth;
  }

  set setAddress(String address) {
    this.address = address;
  }

  set setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }
}

List<Employee> employeeList = [];

void addNewEmployee(Employee employee) {
  employeeList.add(employee);
  print("Add success!");
}

List<Employee> listEmployee() {
  return employeeList;
}

void displayAllEmployee() {
  for (var employee in employeeList) {
    print("ID: ${employee.id}");
    print("Full name: ${employee.fullName}");
    print("Date of birth: ${employee.dateOfBirth}");
    print("Address: ${employee.address}");
    print("Phone number: ${employee.phoneNumber}");
  }
}

void updateEmployee(int id, String fullName, String dateOfBirth, String address,
    String phoneNumber) {
  for (var employee in employeeList) {
    if (employee.id == id) {
      employee.fullName = fullName;
      employee.dateOfBirth = dateOfBirth;
      employee.address = address;
      employee.phoneNumber = phoneNumber;
      print("Update success!");
    }
  }
}
