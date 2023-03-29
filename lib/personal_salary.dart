const dependentCost = 11000000;

class PersonalSalary {
  String? fullName;
  int? grossSalary;

  PersonalSalary({
    required this.fullName,
    required this.grossSalary,
  });

  double get netSalary {
    final gross = grossSalary ?? 0;
    double temp = gross * (1 - 0.105);
    if (temp <= dependentCost) return temp;
    return dependentCost + (temp - dependentCost) * (1 - 0.05);
  }
}
