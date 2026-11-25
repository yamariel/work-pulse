class WorkEntity {
  const WorkEntity({
    required this.id,
    required this.title,
    required this.organization,
    required this.url,
    required this.datePosted,
    required this.employmentTypes,
    required this.locations,
    required this.description,
    this.organizationLogo,
    this.salaryMinValue,
    this.salaryMaxValue,
    this.salaryCurrency,
  });

  final int id;
  final String title;
  final String organization;
  final String? organizationLogo;
  final String url;
  final DateTime datePosted;
  final List<String> employmentTypes;
  final List<String> locations;
  final num? salaryMinValue;
  final num? salaryMaxValue;
  final String? salaryCurrency;
  final String description;
}
