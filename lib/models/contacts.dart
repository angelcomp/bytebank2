
class Contacts {
  late int id;
  late String name;
  late int accountNumber;

  Contacts(this.id, this.name, this.accountNumber);

  @override
  String toString() {
    return 'Contact{name: $name, accountNumber: $accountNumber}';
  }
}