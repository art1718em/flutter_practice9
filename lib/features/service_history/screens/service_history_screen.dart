import 'package:flutter/material.dart';
import 'package:flutter_practice9/features/service_history/state/service_history_state.dart';
import 'package:flutter_practice9/shared/service_locator.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class ServiceHistoryScreen extends StatelessWidget {
  const ServiceHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final serviceHistoryState = sl.get<ServiceHistoryState>();
    final records = serviceHistoryState.serviceRecords;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pushReplacement('/expenses'),
        ),
        title: const Text('История обслуживания'),
      ),
      body: ListView.builder(
        itemCount: records.length,
        itemBuilder: (context, index) {
          final record = records[index];
          return ListTile(
            title: Text(record.title),
            subtitle: Text(DateFormat('dd.MM.yyyy').format(record.date)),
            trailing: Text('${record.cost.toStringAsFixed(2)} руб.'),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push('/history/add');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
