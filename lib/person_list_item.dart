import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
class PersonListItem extends StatelessWidget {
  final Map<String, dynamic> person;

  const PersonListItem({
    super.key,
    required this.person,
  });

  Color getAgeColor(int age) {
    if (age < 18) return Colors.grey;
    if (age <= 20) return Colors.green;
    if (age > 80) return Colors.red;

    // Create gradient between 20-80 years
    final colors = [
      Colors.green,
      Colors.teal,
      Colors.blue,
      Colors.purple,
      Colors.orange,
      Colors.deepOrange,
      Colors.red,
    ];
    
    final ageRange = age - 20;
    final segment = 60 / (colors.length - 1);
    final colorIndex = (ageRange / segment).floor();
    
    if (colorIndex >= colors.length - 1) return colors.last;
    
    return Color.lerp(
      colors[colorIndex],
      colors[colorIndex + 1],
      (ageRange % segment) / segment,
    )!;
  }

  @override
  Widget build(BuildContext context) {
    final birthDate = DateTime.parse(person['birth_date']);
    final age = DateTime.now().year - birthDate.year;

    return Card(
      child: ListTile(
        onTap: () {
          context.push('/person/${person['id']}');
        },
        title: Text(
          '${person['first_name_ar']} ${person['last_name_ar']}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('${person['first_name_en']} ${person['last_name_en']}'),
            Text(
              '${AppLocalizations.of(context)!.voterNumber}: ${person['voter_number'] ?? ''}',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              person['cnie'],
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(width: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: getAgeColor(age),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                age.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
