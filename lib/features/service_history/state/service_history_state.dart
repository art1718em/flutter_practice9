import 'package:flutter/foundation.dart';
import '../models/service_record_model.dart';

class ServiceHistoryState extends ChangeNotifier {
  final List<ServiceRecordModel> _serviceRecords = [];

  List<ServiceRecordModel> get serviceRecords => _serviceRecords;

  void addServiceRecord(String title, double cost) {
    _serviceRecords.add(
      ServiceRecordModel(
        title: title,
        date: DateTime.now(),
        cost: cost,
      ),
    );
    notifyListeners();
  }
}
