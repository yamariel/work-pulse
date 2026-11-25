import '../../domain/entities/work_entity.dart';

class WorkModel extends WorkEntity {
  const WorkModel({
    required super.id,
    required super.title,
    required super.organization,
    required super.url,
    required super.datePosted,
    required super.employmentTypes,
    required super.locations,
    required super.description,
    super.organizationLogo,
    super.salaryMinValue,
    super.salaryMaxValue,
    super.salaryCurrency,
  });

  factory WorkModel.fromJson(Map<String, dynamic> json) {
    return WorkModel(
      id: json['id'] as int,
      title: json['title'] as String,
      organization: json['organization'] as String,
      organizationLogo: json['organization_logo'] as String?,
      url: json['url'] as String,
      datePosted: DateTime.parse(json['date_posted'] as String),
      employmentTypes: _requiredStringList(json, 'employment_type'),
      locations: _requiredStringList(json, 'locations_derived'),
      salaryMinValue: json['ai_salary_min_value'] as num?,
      salaryMaxValue: json['ai_salary_max_value'] as num?,
      salaryCurrency: json['ai_salary_currency'] as String?,
      description: json['description_text'] as String,
    );
  }
}

List<String> _requiredStringList(Map<String, dynamic> json, String key) => List<String>.from(json[key] ?? const []);