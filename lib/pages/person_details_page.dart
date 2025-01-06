import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart' as intl;
import '../models/person.dart';
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
        title: FutureBuilder<Person?>(
          future: DatabaseService.isar.persons.get(personId),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('Loading...');
            return Text(
                '${snapshot.data!.firstNameAr} ${snapshot.data!.lastNameAr}');
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
              child: FutureBuilder<Person?>(
                future: DatabaseService.isar.persons.get(personId),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const CircularProgressIndicator();
                  }

                  final person = snapshot.data!;

                  return ListView(
                    padding: const EdgeInsets.all(16),
                    children: [
                      _buildInfoCard(
                        AppLocalizations.of(context)!.names,
                        [
                          _buildInfoRow(
                              AppLocalizations.of(context)!.arabicName,
                              '${person.firstNameAr} ${person.lastNameAr}'),
                          if (person.firstNameEn != null &&
                              person.lastNameEn != null)
                            _buildInfoRow(
                                AppLocalizations.of(context)!.englishName,
                                '${person.firstNameEn} ${person.lastNameEn}'),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildInfoCard(
                        AppLocalizations.of(context)!.family,
                        [
                          if (person.fatherName != null)
                            _buildInfoRow(AppLocalizations.of(context)!.father,
                                person.fatherName!),
                          if (person.motherName != null)
                            _buildInfoRow(AppLocalizations.of(context)!.mother,
                                person.motherName!),
                          if (person.grandfatherPaternal != null)
                            _buildInfoRow(
                                AppLocalizations.of(context)!
                                    .paternalGrandfather,
                                person.grandfatherPaternal!),
                          if (person.grandfatherMaternal != null)
                            _buildInfoRow(
                                AppLocalizations.of(context)!
                                    .maternalGrandfather,
                                person.grandfatherMaternal!),
                        ],
                      ),
                      const SizedBox(height: 16),
                      _buildInfoCard(
                        AppLocalizations.of(context)!.personalInfo,
                        [
                          if (person.birthDate != null) ...[
                            _buildInfoRow(
                                AppLocalizations.of(context)!.birthDate,
                                DateFormat('dd/MM/yyyy')
                                    .format(person.birthDate!)),
                            _buildInfoRow(AppLocalizations.of(context)!.age,
                                '${person.age} ${AppLocalizations.of(context)!.years}'),
                          ],
                          _buildInfoRow('CNIE', person.cnie),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.voterCircle,
                              person.voterCircle),
                          _buildInfoRow(
                              AppLocalizations.of(context)!.voterNumber,
                              person.voterNumber),
                          if (person.idcs != null)
                            _buildInfoRow(AppLocalizations.of(context)!.idcs,
                                person.idcs!),
                          if (person.birthLocation != null)
                            _buildInfoRow(
                                AppLocalizations.of(context)!.birthLocation,
                                person.birthLocation!),
                          if (person.address != null)
                            _buildInfoRow(AppLocalizations.of(context)!.address,
                                person.address!),
                        ],
                      ),
                      if (person.attachmentIds?.isNotEmpty ?? false) ...[
                        const SizedBox(height: 16),
                        _buildInfoCard(
                          AppLocalizations.of(context)!.attachments,
                          person.attachmentIds!
                              .map((id) => _buildInfoRow(
                                  AppLocalizations.of(context)!.document, id))
                              .toList(),
                        ),
                      ],
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
${person.firstNameAr} ${person.lastNameAr}
${person.firstNameEn ?? ''} ${person.lastNameEn ?? ''}

${AppLocalizations.of(context)!.personalInfo}:
${AppLocalizations.of(context)!.voterNumber}: ${person.voterNumber}
${AppLocalizations.of(context)!.cnie}: ${person.cnie}
${AppLocalizations.of(context)!.age}: ${person.age} ${AppLocalizations.of(context)!.years}
${AppLocalizations.of(context)!.birthDate}: ${person.birthDate != null ? intl.DateFormat('dd/MM/yyyy').format(person.birthDate!) : ''}
${AppLocalizations.of(context)!.birthLocation}: ${person.birthLocation ?? ''}
${AppLocalizations.of(context)!.address}: ${person.address ?? ''}

${AppLocalizations.of(context)!.family}:
${AppLocalizations.of(context)!.father}: ${person.fatherName ?? ''}
${AppLocalizations.of(context)!.mother}: ${person.motherName ?? ''}
${AppLocalizations.of(context)!.paternalGrandfather}: ${person.grandfatherPaternal ?? ''}
${AppLocalizations.of(context)!.maternalGrandfather}: ${person.grandfatherMaternal ?? ''}
''';
                          Share.share(shareText.trim());
                        },
                        icon: const Icon(Icons.share),
                        label: Text(AppLocalizations.of(context)!.share),
                      ),

                      // After existing cards
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
