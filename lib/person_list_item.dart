import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'models/person.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PersonListItem extends StatelessWidget {
  final Person person;

  const PersonListItem({super.key, required this.person});

  Color _getAgeColor(int? age) {
    if (age == null) return Colors.grey;
    if (age < 18) return Colors.grey;
    if (age <= 30) return Colors.green;
    if (age <= 50) return Colors.orange;
    if (age <= 70) return Colors.deepOrange;
    return Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.push('/person/${person.id}'),
      title: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Flex(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          direction: Axis.horizontal,
          children: [
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(person.firstNameAr,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  if (person.firstNameEn != null)
                    Text(person.firstNameEn!,
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodySmall?.color)),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(person.lastNameAr,
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  if (person.lastNameEn != null)
                    Text(person.lastNameEn!,
                        style: TextStyle(
                            color:
                                Theme.of(context).textTheme.bodySmall?.color)),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    person.cnie,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    person.voterNumber,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (person.age != null)
                    Text(
                      '${person.age}',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: _getAgeColor(person.age),
                      ),
                    ),
                  Text(
                    AppLocalizations.of(context)!.age,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
