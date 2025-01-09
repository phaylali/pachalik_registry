import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../comments/add_comment_field.dart';
import '../comments/comments_list.dart';
import '../services/database_service.dart';
import 'package:share_plus/share_plus.dart';

class PersonDetailsPage extends ConsumerWidget {
  final int personId;

  const PersonDetailsPage({super.key, required this.personId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: FutureBuilder<Map<String, dynamic>?>(
          future: DatabaseService.getCitizenById(personId),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('Loading...');
            return Text(
                '${snapshot.data!['first_name_ar']} ${snapshot.data!['last_name_ar']}');
          },
        ),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth =
                constraints.maxWidth > 600 ? 600.0 : constraints.maxWidth * 0.9;

            return SizedBox(
              width: maxWidth,
              child: FutureBuilder<Map<String, dynamic>?>(
                future: DatabaseService.getCitizenById(personId),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  }

                  final person = snapshot.data!;
                  final birthDate = DateTime.parse(person['birth_date']);

                  return ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      _buildInfoCard(
                        AppLocalizations.of(context)!.names,
                        [
                          _buildInfoRow(
                            AppLocalizations.of(context)!.arabicName,
                            '${person['first_name_ar']} ${person['last_name_ar']}',
                          ),
                          _buildInfoRow(
                            AppLocalizations.of(context)!.englishName,
                            '${person['first_name_en']} ${person['last_name_en']}',
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildInfoCard(
                        AppLocalizations.of(context)!.personalInfo,
                        [
                          _buildInfoRow(AppLocalizations.of(context)!.gender,
                              '${person['gender_ar']} / ${person['gender_en']}'),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.maritalStatus,
                              '${person['marital_status_ar']} / ${person['marital_status_en']}'),
                          _buildInfoRow(AppLocalizations.of(context)!.birthDate,
                              DateFormat('dd/MM/yyyy').format(birthDate)),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.birthLocation,
                              person['birth_location_ar'] ?? ''),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.birthLocation,
                              person['birth_location_en'] ?? ''),
                          _buildInfoRow(AppLocalizations.of(context)!.address,
                              person['address_ar'] ?? ''),
                          _buildInfoRow(AppLocalizations.of(context)!.address,
                              person['address_en'] ?? ''),
                          _buildInfoRow('CNIE', person['cnie']),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.civilRegistryNumber,
                              person['civil_registry_number'] ?? ''),
                          _buildInfoRow(AppLocalizations.of(context)!.idcs,
                              person['idcs'] ?? ''),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildInfoCard(
                        AppLocalizations.of(context)!.family,
                        [
                          _buildInfoRow(AppLocalizations.of(context)!.father,
                              person['father_name_ar'] ?? ''),
                          _buildInfoRow(AppLocalizations.of(context)!.father,
                              person['father_name_en'] ?? ''),
                          _buildInfoRow(
                              '${AppLocalizations.of(context)!.cnie} ${AppLocalizations.of(context)!.fatherCnie}',
                              person['father_cnie'] ?? ''),
                          _buildInfoRow(AppLocalizations.of(context)!.mother,
                              person['mother_name_ar'] ?? ''),
                          _buildInfoRow(AppLocalizations.of(context)!.mother,
                              person['mother_name_en'] ?? ''),
                          _buildInfoRow(
                              '${AppLocalizations.of(context)!.cnie} ${AppLocalizations.of(context)!.motherCnie}',
                              person['mother_cnie'] ?? ''),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.grandmotherPaternal,
                              '${person['grandmother_paternal_ar']} / ${person['grandmother_paternal_en']}'),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.grandmotherMaternal,
                              '${person['grandmother_maternal_ar']} / ${person['grandmother_maternal_en']}'),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.paternalGrandfather,
                              '${person['grandfather_paternal_ar']} / ${person['grandfather_paternal_en']}'),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.maternalGrandfather,
                              '${person['grandfather_maternal_ar']} / ${person['grandfather_maternal_en']}'),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildInfoCard(
                        AppLocalizations.of(context)!.voterStatistics,
                        [
                          _buildInfoRow(
                              AppLocalizations.of(context)!.voterCircle,
                              person['voter_circle'] ?? ''),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.voterNumber,
                              person['voter_number'] ?? ''),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildInfoCard(
                        'Additional Information',
                        [
                          _buildInfoRow(
                              AppLocalizations.of(context)!
                                  .politicalAffiliation,
                              '${person['political_affiliation_ar']} / ${person['political_affiliation_en']}'),
                          _buildInfoRow(AppLocalizations.of(context)!.job,
                              '${person['job_ar']} / ${person['job_en']}'),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.nationality,
                              '${person['nationality_ar']} / ${person['nationality_en']}'),
                          if (person['second_nationality_ar'] != null ||
                              person['second_nationality_en'] != null)
                            _buildInfoRow(
                                AppLocalizations.of(context)!.secondNationality,
                                '${person['second_nationality_ar']} / ${person['second_nationality_en']}'),
                        ],
                      ),
                      const SizedBox(height: 16),
                      FilledButton.icon(
                        style: FilledButton.styleFrom(
                          minimumSize: const Size(200, 48),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        onPressed: () {
                          final shareText = '''
${AppLocalizations.of(context)!.names}:
${person['first_name_ar']} ${person['last_name_ar']}
${person['first_name_en']} ${person['last_name_en']}

${AppLocalizations.of(context)!.personalInfo}:
${AppLocalizations.of(context)!.voterNumber}: ${person['voter_number']}
${AppLocalizations.of(context)!.cnie}: ${person['cnie']}
${AppLocalizations.of(context)!.birthDate}: ${DateFormat('dd/MM/yyyy').format(birthDate)}
${AppLocalizations.of(context)!.birthLocation}: ${person['birth_location_ar']}
${AppLocalizations.of(context)!.address}: ${person['address_ar']}

${AppLocalizations.of(context)!.family}:
${AppLocalizations.of(context)!.father}: ${person['father_name_ar']}
${AppLocalizations.of(context)!.mother}: ${person['mother_name_ar']}
${AppLocalizations.of(context)!.paternalGrandfather}: ${person['grandfather_paternal_ar']}
${AppLocalizations.of(context)!.maternalGrandfather}: ${person['grandfather_maternal_ar']}
''';
                          Share.share(shareText.trim());
                        },
                        icon: const Icon(Icons.share),
                        label: Text(AppLocalizations.of(context)!.share),
                      ),
                      const SizedBox(height: 16),
                      _buildInfoCard(
                        AppLocalizations.of(context)!.comments,
                        [
                          CommentsList(personId: personId),
                          AddCommentField(personId: personId),
                        ],
                      ),
                    ],
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildInfoCard(String title, List<Widget> children) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: SelectableText(
              value,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
