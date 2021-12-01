
class Contacts {
  late String name;
  late int accountNumber;

  Contacts(this.name, this.accountNumber);

  @override
  String toString() {
    return 'Contact{name: $name, accountNumber: $accountNumber}';
  }
}