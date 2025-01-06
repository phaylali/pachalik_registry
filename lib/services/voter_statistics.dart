import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import '../models/person.dart';
import '../services/database_service.dart';
import 'voter_circle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class VoterStatistics extends ConsumerWidget {
  const VoterStatistics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StreamBuilder<List<Person>>(
      stream: DatabaseService.isar.persons.where().watch(fireImmediately: true),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const CircularProgressIndicator();

        final stats = List.generate(13, (i) => i + 1).map((circle) {
          final count = snapshot.data!
              .where((p) => p.voterCircle == circle.toString())
              .length;
          return MapEntry(circle, count);
        }).toList();

        final total = stats.fold(0, (sum, entry) => sum + entry.value);

        return Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)!.citizenDistribution,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            AppLocalizations.of(context)!.totalCitizens(total),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: PieChart(
                        PieChartData(
                          sections: stats.map((entry) {
                            return PieChartSectionData(
                              value: entry.value.toDouble(),
                              title: '',
                              color: VoterCircle.getColorForCircle(
                                  entry.key.toString()),
                              radius: 45,
                            );
                          }).toList(),
                          sectionsSpace: 1,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                SizedBox(
                  height: 200,
                  child: BarChart(
                    BarChartData(
                      alignment: BarChartAlignment.spaceAround,
                      maxY: snapshot.data!.length.toDouble(),
                      titlesData: FlTitlesData(
                        rightTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              int count = snapshot.data!
                                  .where((p) =>
                                      p.voterCircle == value.toInt().toString())
                                  .length;
                              return Text(count.toString());
                            },
                          ),
                        ),
                        leftTitles: const AxisTitles(
                          sideTitles: SideTitles(showTitles: true),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            getTitlesWidget: (value, meta) {
                              return Text(value.toInt().toString());
                            },
                          ),
                        ),
                      ),
                      barGroups: stats.map((entry) {
                        return BarChartGroupData(
                          x: entry.key,
                          barRods: [
                            BarChartRodData(
                              toY: entry.value.toDouble(),
                              color: VoterCircle.getColorForCircle(
                                  entry.key.toString()),
                            ),
                          ],
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
