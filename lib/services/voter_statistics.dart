import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/database_service.dart';
import '../services/voter_circle.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
final voterStatsProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  final stats = await DatabaseService.getVoterStatistics();
  final circleStats = await DatabaseService.getVoterCircleStatistics();
  return {
    'stats': stats,
    'circleStats': circleStats,
  };
});

class VoterStatistics extends ConsumerWidget {
  const VoterStatistics({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final statsAsync = ref.watch(voterStatsProvider);

    return statsAsync.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
      data: (data) => Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                          AppLocalizations.of(context)!.totalCitizens(data['stats']['total']),
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
                        sections: data['circleStats']
                            .map<PieChartSectionData>((entry) {
                          return PieChartSectionData(
                            value: entry['count'].toDouble(),
                            title: '',
                            color: VoterCircle.getColorForCircle(
                                entry['circle'].toString()),
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
                    maxY: data['stats']['total'].toDouble(),
                    minY: 0,
                    titlesData: FlTitlesData(
                      rightTitles: const AxisTitles(
                        sideTitles: SideTitles(showTitles: false),
                      ),
                      topTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          getTitlesWidget: (value, meta) {
                            final circleData = data['circleStats'].firstWhere(
                                (e) => e['circle'] == value.toInt(),
                                orElse: () => {'count': 0});
                            return Text(circleData['count'].toString());
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
                    barGroups: List.generate(13, (index) {
                      final circleNum = (index + 1).toString();
                      final circleData = data['circleStats'].firstWhere(
                          (e) => e['circle'].toString() == circleNum,
                          orElse: () => {'circle': index + 1, 'count': 0});
                      return BarChartGroupData(
                        x: index + 1,
                        barRods: [
                          BarChartRodData(
                            toY: circleData['count'].toDouble(),
                            color: VoterCircle.getColorForCircle(circleNum),
                          ),
                        ],
                      );
                    }),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
